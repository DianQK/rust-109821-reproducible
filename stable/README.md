The `foo` adds the `#![no_builtins]` attribute with a dependency on `bar`.

Run `cargo build --release`:

```
error: linking with `cc` failed: exit status: 1
  |
  = note: LC_ALL="C" PATH="/home/dianqk/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/bin:/home/dianqk/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl" VSLANG="1033" "cc" "-m64" "/tmp/rustc1bCY9G/symbols.o" "/home/dianqk/Projects/rust-109821-reproducible/stable/target/release/deps/tool-7d31d42a93d28cda.tool.9ed8a54e-cgu.0.rcgu.o" "git a-Wl,--as-needed" "-L" "/home/dianqk/Projects/rust-109821-reproducible/stable/target/release/deps" "-L" "/home/dianqk/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-Wl,-Bstatic" "/home/dianqk/Projects/rust-109821-reproducible/stable/target/release/deps/libfoo-c493d3843c14f4c8.rlib" "/home/dianqk/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcompiler_builtins-f99f4eaa4a87789a.rlib" "-Wl,-Bdynamic" "-lgcc_s" "-lutil" "-lrt" "-lpthread" "-lm" "-ldl" "-lc" "-Wl,--eh-frame-hdr" "-Wl,-znoexecstack" "-L" "/home/dianqk/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-o" "/home/dianqk/Projects/rust-109821-reproducible/stable/target/release/deps/tool-7d31d42a93d28cda" "-Wl,--gc-sections" "-pie" "-Wl,-zrelro,-znow" "-nodefaultlibs"
  = note: /usr/bin/ld: /home/dianqk/Projects/rust-109821-reproducible/stable/target/release/deps/libfoo-c493d3843c14f4c8.rlib(foo-c493d3843c14f4c8.foo.412dc6ba-cgu.0.rcgu.o): in function `foo::add':
          foo.412dc6ba-cgu.0:(.text._ZN3foo3add17h362e8ce5f77faa77E+0x3): undefined reference to `bar::add'
          collect2: error: ld returned 1 exit status
```
