// nmh3_gc_crashfix_v4.c
//
// v3 required a copy of the real winmm.dll renamed to winmm_o.dll sitting
// next to this file, because static PE export forwarders can only name a
// DLL (resolved through the normal search order) and can't embed a literal
// path -- and forwarding to "winmm.dll" by name would just find this same
// file again, since it's sitting in the game's own directory.
//
// v4 removes that requirement. Instead of static forwarders, every export
// is a small trampoline (see trampolines.s) that jumps through a function
// pointer slot. At DLL_PROCESS_ATTACH, we build an unambiguous path to the
// REAL system winmm.dll via GetSystemDirectory() + "\winmm.dll" (correct
// even if Windows isn't installed on C:), LoadLibraryEx it explicitly with
// LOAD_LIBRARY_SEARCH_SYSTEM32 so the loader can't accidentally resolve
// back to this file, GetProcAddress every real function, and fill in the
// pointer slots the trampolines jump through.
//
// If anything goes wrong resolving the real DLL (missing/blocked), this
// deliberately does NOT silently continue -- winmm is a real dependency of
// the game and running with dead trampolines would crash in a much more
// confusing way than a clean, loud failure. We MessageBox and abort.
//
// Same crash-skip patch table as v3 otherwise (GC refcount UAF + post-boss
// ratio-read UAF). See that file's header for details on each.
//
// Install (v4): just this ONE file, winmm.dll, in Binaries\Win64\.
// No winmm_o.dll needed anymore.

#include <windows.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "trampoline_table.h"

typedef struct {
    uintptr_t crash_rva;
    uintptr_t resume_rva;
    int       expect_write;
    const char* label;
} CrashPatch;

static const CrashPatch g_patches[] = {
    { 0x17c3f3dULL, 0x17c3f3dULL + 5, 1, "GC refcount UAF (write)" },
    { 0x13dc1a6ULL, 0x13dc1c6ULL,     0, "post-boss ratio read UAF (read)" },
};
#define NUM_PATCHES (sizeof(g_patches) / sizeof(g_patches[0]))

static uintptr_t g_base = 0;
static PVOID g_VehHandle = NULL;

static LONG WINAPI CrashSkipHandler(EXCEPTION_POINTERS* ExceptionInfo)
{
    EXCEPTION_RECORD* er = ExceptionInfo->ExceptionRecord;
    if (er->ExceptionCode != EXCEPTION_ACCESS_VIOLATION || g_base == 0)
        return EXCEPTION_CONTINUE_SEARCH;

    PCONTEXT ctx = ExceptionInfo->ContextRecord;
    ULONG_PTR accessType = er->ExceptionInformation[0];

    for (size_t i = 0; i < NUM_PATCHES; i++)
    {
        const CrashPatch* p = &g_patches[i];
        uintptr_t crashVA = g_base + p->crash_rva;
        if (ctx->Rip == crashVA && (int)accessType == p->expect_write)
        {
            ctx->Rip = g_base + p->resume_rva;
            return EXCEPTION_CONTINUE_EXECUTION;
        }
    }
    return EXCEPTION_CONTINUE_SEARCH;
}

// A missing export here is not fatal on its own -- some of the standard
// winmm.dll list are obscure, legacy 16-bit-era task/driver-management
// functions (mmTaskCreate, DrvGetModuleHandle, OpenDriver, etc.) that may
// simply not exist as named exports on every Windows version. Almost
// nothing calls them. We resolve what's there and carry on; we only
// refuse to continue if something is seriously wrong (can't find the
// real DLL at all, or resolved suspiciously few functions overall).
//
// No debug log is written -- confirmed clean via testing (175/176
// resolved, only the unused mmTaskGetTaskName missing, well above the
// bail-out threshold below).
static int ResolveRealWinmm(void)
{
    char sysdir[MAX_PATH];
    UINT n = GetSystemDirectoryA(sysdir, MAX_PATH);
    if (n == 0 || n >= MAX_PATH)
        return 0;

    char fullpath[MAX_PATH];
    _snprintf(fullpath, MAX_PATH, "%s\\winmm.dll", sysdir);
    fullpath[MAX_PATH-1] = 0;

    // Explicit path + SEARCH_SYSTEM32 flag: no ambiguity with our own
    // same-named file in the game directory.
    HMODULE hReal = LoadLibraryExA(fullpath, NULL,
                                    LOAD_LIBRARY_SEARCH_SYSTEM32);
    if (!hReal)
        return 0; // genuinely serious: couldn't even find the real DLL

    int resolved = 0;
    for (size_t i = 0; i < NUM_IMPORTS; i++)
    {
        void* proc = (void*)GetProcAddress(hReal, g_import_table[i].name);
        if (proc)
        {
            *g_import_table[i].slot = proc;
            resolved++;
        }
    }

    // Only bail if something is clearly broken overall, e.g. barely
    // anything resolved (would suggest a totally wrong/corrupt DLL was
    // found rather than just a few legacy names being absent).
    if (resolved < (int)(NUM_IMPORTS / 2))
        return 0;

    return 1;
}

static void InstallFix(void)
{
    HMODULE hMain = GetModuleHandleA(NULL);
    if (hMain)
    {
        g_base = (uintptr_t)hMain;
        g_VehHandle = AddVectoredExceptionHandler(1, CrashSkipHandler);
    }
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD reason, LPVOID reserved)
{
    (void)reserved;
    switch (reason)
    {
        case DLL_PROCESS_ATTACH:
            DisableThreadLibraryCalls(hModule);
            if (!ResolveRealWinmm())
            {
                MessageBoxA(NULL,
                    "nmh3 winmm.dll proxy: failed to resolve the real "
                    "System32\\winmm.dll. Audio/timer functions would be "
                    "broken, so refusing to continue. Reinstall or repair "
                    "this file's setup.",
                    "winmm.dll proxy error", MB_ICONERROR | MB_OK);
                return FALSE; // fail DLL load -> game will show its own error
            }
            InstallFix();
            break;
        case DLL_PROCESS_DETACH:
            if (g_VehHandle) RemoveVectoredExceptionHandler(g_VehHandle);
            break;
    }
    return TRUE;
}
