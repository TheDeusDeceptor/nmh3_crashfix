#!/usr/bin/env bash
# Cross-compiles winmm.dll from Linux using mingw-w64.
# On Debian/Ubuntu: sudo apt install mingw-w64
set -e
cd "$(dirname "$0")/src"
x86_64-w64-mingw32-gcc -shared -O2 -o ../winmm.dll \
    nmh3_gc_crashfix.c trampolines.s winmm.def \
    -static -lkernel32 -luser32
echo "Built winmm.dll"
