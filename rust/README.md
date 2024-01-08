
```
# du -ms /usr/local/* |sort -n
81      /usr/local/cargo
1178    /usr/local/rustup

# pwd; du -ms *
/usr/local/rustup/toolchains/stable-x86_64-unknown-linux-gnu
67      bin
1       etc
431     lib
7       libexec
674     share

# ls -l /usr/local/cargo/bin/* bin/*
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/cargo
-rwxr-xr-x  1 root root  9401024 Jan  8 05:13 /usr/local/cargo/bin/cargo-chef
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/cargo-clippy
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/cargo-fmt
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/cargo-miri
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/clippy-driver
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rls
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rust-analyzer
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rust-gdb
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rust-gdbgui
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rust-lldb
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rustc
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rustdoc
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rustfmt
-rwxr-xr-x 14 root root 14293176 Jan  8 05:12 /usr/local/cargo/bin/rustup
-rwxr-xr-x  1 root root 32802792 Jan  8 05:12 bin/cargo
-rwxr-xr-x  1 root root  1204544 Jan  8 05:12 bin/cargo-clippy
-rwxr-xr-x  1 root root  5419344 Jan  8 05:12 bin/cargo-fmt
-rwxr-xr-x  1 root root  9510576 Jan  8 05:12 bin/clippy-driver
-rwxr-xr-x  1 root root      980 Jan  8 05:12 bin/rust-gdb
-rwxr-xr-x  1 root root     2160 Jan  8 05:12 bin/rust-gdbgui
-rwxr-xr-x  1 root root     1072 Jan  8 05:12 bin/rust-lldb
-rwxr-xr-x  1 root root  2880144 Jan  8 05:12 bin/rustc
-rwxr-xr-x  1 root root 11738016 Jan  8 05:12 bin/rustdoc
-rwxr-xr-x  1 root root  5991848 Jan  8 05:12 bin/rustfmt
```

```
# cargo -Vv
cargo 1.75.0 (1d8b05cdd 2023-11-20)
release: 1.75.0
commit-hash: 1d8b05cdd1287c64467306cf3ca2c8ac60c11eb0
commit-date: 2023-11-20
host: x86_64-unknown-linux-gnu
libgit2: 1.7.1 (sys:0.18.1 vendored)
libcurl: 8.4.0-DEV (sys:0.4.68+curl-8.4.0 vendored ssl:OpenSSL/1.1.1u)
ssl: OpenSSL 1.1.1u  30 May 2023
os: Ubuntu 22.4.0 [64-bit]

# rustc -Vv
rustc 1.75.0 (82e1608df 2023-12-21)
binary: rustc
commit-hash: 82e1608dfa6e0b5569232559e3d385fea5a93112
commit-date: 2023-12-21
host: x86_64-unknown-linux-gnu
release: 1.75.0
LLVM version: 17.0.6
```
