#!/bin/bash

OPTI_FLAGS="-C save-temps -C symbol-mangling-version=v0 -C link-args=-Wl,--no-gc-sections"
RUSTFLAGS=$OPTI_FLAGS \
cargo build --target x86_64-unknown-linux-gnu --release \
-Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --verbose
