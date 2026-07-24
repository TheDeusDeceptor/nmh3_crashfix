# NMH3 Crash Fix (winmm.dll proxy)

A crash **mitigation** for two reproducible, dangling-pointer crashes in
*No More Heroes 3* (PC, Unreal Engine 4.27.1, Shipping build), found by
analyzing crash dumps (`UE4Minidump.dmp` + `CrashContext.runtime-xml`)
against the shipping executable with no PDB/symbols available.

This whole thing — the crash-dump analysis, the disassembly, the fix, and
this README — was put together with the help of **Claude** (Anthropic),
working from user-submitted UE4 crash reports.

## What this actually is

**This is not a fix for the underlying bug.** Something in the game (or
engine) is destroying objects while stale pointers to them are still
around. This DLL doesn't find or fix that — it just catches the two
specific crashes that result from it and steers execution past them
instead of letting the process die.

Think of it as a very targeted, very narrow safety net, not a cure.

## The two crashes it patches

| # | Symptom | Where | Cause |
|---|---------|-------|-------|
| 1 | Random crash ~20-30 min into a session | `nmh3-Win64-Shipping.exe + 0x17c3f3d` | Intrusive-refcount decrement (`lock xadd`) on a dangling pointer during a Garbage Collection pass |
| 2 | Crash right after beating certain bosses, on the load transition | `nmh3-Win64-Shipping.exe + 0x13dc1a6` | Reading a percentage/ratio field (health%, load%, or similar) off an object already torn down by the time the loading screen reads it |

Both are guarded by a Vectored Exception Handler that steps `RIP` past
the faulting instruction to a safe continuation point — for #1, past the
5-byte atomic op (the following compare/branch already handles "don't
call the destructor" correctly on its own); for #2, straight to the
function's own existing "value unavailable, skip this calc" branch.

Neither patch touches game files. It only affects the running process.

## Which build this matches

```
File:      nmh3-Win64-Shipping.exe
Size:      96,276,992 bytes
SHA-256:   9eed4652f246877bd876600c5788562f64a79004fc6885d899acbf5c01455b44
PE built:  2025-10-17 22:58:43 UTC
```

Confirmed against a fresh Steam download, so this matches the current
live build as of this writing. **Check your exe's hash/size before
relying on this.** If the game gets patched later, these two addresses
may shift, and the handler will simply stop matching anything (harmless —
crashes just go back to being unguarded, nothing worse happens).

## How it works

`winmm.dll` is a real, non-delay-load import of the game's exe (used for
exactly 3 functions: `timeBeginPeriod`, `timeEndPeriod`,
`waveOutGetNumDevs`), which guarantees it gets loaded before the game's
own code starts running. This project hijacks that filename.

Rather than requiring a renamed copy of the real system DLL sitting next
to it (the classic ASI-loader-style trick), it resolves the genuine
`%SystemRoot%\System32\winmm.dll` at runtime via `GetSystemDirectory()` +
`LoadLibraryEx(..., LOAD_LIBRARY_SEARCH_SYSTEM32)`, so there's no
ambiguity about which file gets used. Every export is a tiny trampoline
(`jmp *ptr(%rip)`) filled in via `GetProcAddress` against the real DLL, so
the game's actual multimedia calls behave identically to normal. This is
the same general approach used by legitimate proxy-DLL mods like
[OptiScaler](https://github.com/optiscaler/OptiScaler).

On load, it also installs a Vectored Exception Handler watching for
access violations at the two addresses above and redirects execution
past them when they hit — see `src/nmh3_gc_crashfix.c` for the exact
patch table and reasoning behind each one.

If the real `winmm.dll` can't be resolved at all (a handful of obscure
legacy exports like `mmTaskGetTaskName` may be genuinely absent on some
Windows versions — harmless, ~175/176 typically resolves and it carries
on fine), it only refuses to continue if resolution is so broken it looks
like something is seriously wrong, rather than failing over one or two
missing legacy functions nobody calls anymore.

## Install

1. Download `winmm.dll` from the [Releases](../../releases) page, or
   build it yourself (see below). Every push and pull request is also
   built automatically by GitHub Actions if you'd rather grab a
   workflow-run artifact than wait for a tagged release.
2. Drop it in the game's `Binaries\Win64\` folder, next to
   `nmh3-Win64-Shipping.exe`.
3. Launch the game normally.

No other files needed. Nothing to rename, nothing else to copy.

## Building from source

Requires [mingw-w64](https://www.mingw-w64.org/) (cross-compiles a
Windows DLL from Linux/macOS/WSL just fine):

```bash
sudo apt install mingw-w64   # Debian/Ubuntu
./build.sh
```

Produces `winmm.dll` in the repo root. Source is in `src/`:

- `nmh3_gc_crashfix.c` — the actual logic (DLL resolution + crash patch table)
- `trampolines.s` — generated export trampolines
- `trampoline_table.h` — generated pointer-slot table used by the C code
- `winmm.def` — export list (module definition file)

## Caveats / disclaimer

- Only guards the two exact instruction addresses above. A different
  crash is a different bug and won't be caught by this.
- Skipping the release in crash #1 leaks the dangling object for the
  rest of the session (minor — not worth worrying about for one play
  session).
- This is provided as-is, unofficial, and not affiliated with Grasshopper
  Manufacture, Xseed, or Marvelous. Use at your own discretion. Back up
  your saves before a long session, same as you'd do with any other mod.
- If you hit a *new* reproducible crash, feel free to open an issue with
  the `UE4CC-Windows-*` crash report folder (the `.dmp` + `.runtime-xml`
  + `.ini` files Unreal generates) and it can potentially be added to the
  patch table the same way these two were.

## License

MIT — see `LICENSE`.
