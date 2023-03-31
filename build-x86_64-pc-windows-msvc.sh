#!/bin/bash

OPTI_FLAGS="-C save-temps -C symbol-mangling-version=v0"
RUSTFLAGS=$OPTI_FLAGS XWIN_ARCH="x86_64" XWIN_CACHE_DIR="/tmp/xwin_64" \
cargo xwin build --target x86_64-pc-windows-msvc --release \
-Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --verbose
