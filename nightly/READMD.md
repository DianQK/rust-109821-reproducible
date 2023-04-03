Running `build-x86_64-pc-windows-msvc.sh`:

```
error: linking with `lld-link` failed: exit status: 1
  |
  = note: LC_ALL="C" PATH="/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/bin:/home/dianqk/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/tmp" VSLANG="1033" "lld-link" "-flavor" "link" "/NOLOGO" "/tmp/rustcNwAsGj/symbols.o" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-pc-windows-msvc/release/deps/foo.foo.2374c815-cgu.0.rcgu.o" "/LIBPATH:/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-pc-windows-msvc/release/deps" "/LIBPATH:/home/dianqk/Projects/rust-109821-reproducible/target/release/deps" "/LIBPATH:/tmp/xwin_64/crt/lib/x86_64" "/LIBPATH:/tmp/xwin_64/sdk/lib/um/x86_64" "/LIBPATH:/tmp/xwin_64/sdk/lib/ucrt/x86_64" "/LIBPATH:/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-pc-windows-msvc/lib" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-pc-windows-msvc/release/deps/libcompiler_builtins-9b6c9059cca8e3c5.rlib" "kernel32.lib" "advapi32.lib" "userenv.lib" "kernel32.lib" "ws2_32.lib" "bcrypt.lib" "ntdll.lib" "msvcrt.lib" "legacy_stdio_definitions.lib" "/NXCOMPAT" "/LIBPATH:/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-pc-windows-msvc/lib" "/OUT:/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-pc-windows-msvc/release/deps/foo.exe" "/OPT:REF,ICF" "/DEBUG"
  = note: lld-link: error: undefined symbol: <u32 as core::convert::TryInto<u16>>::try_into
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u32 as compiler_builtins::int::shift::Ashl>::ashl)
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u32 as compiler_builtins::int::shift::Ashl>::ashl)
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u32 as compiler_builtins::int::shift::Ashl>::ashl)
          >>> referenced 28 more times
          ...
          lld-link: error: undefined symbol: <u32 as core::convert::TryInto<u8>>::try_into
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u8 as compiler_builtins::int::Int>::logical_shr)
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u8 as compiler_builtins::int::Int>::wrapping_shl)
          >>> referenced by libcompiler_builtins-9b6c9059cca8e3c5.rlib(compiler_builtins-9b6c9059cca8e3c5.compiler_builtins.56b638db-cgu.0.rcgu.o):(<u8 as compiler_builtins::int::Int>::wrapping_shr)
          >>> referenced 1 more times
          

error: could not compile `foo` (bin "foo") due to previous error
```

Running `build-x86_64-unknown-linux-gnu.sh`:

```
error: linking with `cc` failed: exit status: 1
  |
  = note: LC_ALL="C" PATH="/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/bin:/home/dianqk/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl" VSLANG="1033" "cc" "-m64" "/tmp/rustcPTeZuv/symbols.o" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/foo-aa47f41b98e67cd8.foo.bc73f7c2-cgu.0.rcgu.o" "-Wl,--as-needed" "-L" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps" "-L" "/home/dianqk/Projects/rust-109821-reproducible/target/release/deps" "-L" "/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-Wl,-Bstatic" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/libcompiler_builtins-a0deebfba3b79686.rlib" "-Wl,-Bdynamic" "-lgcc_s" "-lutil" "-lrt" "-lpthread" "-lm" "-ldl" "-lc" "-Wl,--eh-frame-hdr" "-Wl,-z,noexecstack" "-L" "/home/dianqk/.rustup/toolchains/nightly-2023-03-31-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-o" "/home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/foo-aa47f41b98e67cd8" "-Wl,--gc-sections" "-pie" "-Wl,-z,relro,-z,now" "-nodefaultlibs" "-Wl,--no-gc-sections"
  = note: /usr/bin/ld: /home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/libcompiler_builtins-a0deebfba3b79686.rlib(compiler_builtins-a0deebfba3b79686.compiler_builtins.258a3a98-cgu.0.rcgu.o): in function `<u32 as compiler_builtins::int::shift::Ashl>::ashl':
          compiler_builtins.258a3a98-cgu.0:(.text._RNvYmNtNtNtCseRNcLOthBOu_17compiler_builtins3int5shift4Ashl4ashlB9_+0x27): undefined reference to `<u32 as core::convert::TryInto<u16>>::try_into'
          /usr/bin/ld: compiler_builtins.258a3a98-cgu.0:(.text._RNvYmNtNtNtCseRNcLOthBOu_17compiler_builtins3int5shift4Ashl4ashlB9_+0x6a): undefined reference to `<u32 as core::convert::TryInto<u16>>::try_into'
          /usr/bin/ld: /home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/libcompiler_builtins-a0deebfba3b79686.rlib(compiler_builtins-a0deebfba3b79686.compiler_builtins.258a3a98-cgu.0.rcgu.o): in function `<u64 as compiler_builtins::int::shift::Ashl>::ashl':
          compiler_builtins.258a3a98-cgu.0:(.text._RNvYyNtNtNtCseRNcLOthBOu_17compiler_builtins3int5shift4Ashl4ashlB9_+0x21): undefined reference to `<u32 as 
          ...
          /usr/bin/ld: /home/dianqk/Projects/rust-109821-reproducible/target/x86_64-unknown-linux-gnu/release/deps/libcompiler_builtins-a0deebfba3b79686.rlib(compiler_builtins-a0deebfba3b79686.compiler_builtins.258a3a98-cgu.0.rcgu.o): in function `<i32 as compiler_builtins::int::Int>::logical_shr':
          compiler_builtins.258a3a98-cgu.0:(.text._RNvXs5_NtCseRNcLOthBOu_17compiler_builtins3intlNtB5_3Int11logical_shr+0xa): undefined reference to `<u32 as core::convert::TryInto<u32>>::try_into'
          collect2: error: ld returned 1 exit status
```
