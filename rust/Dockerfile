FROM --platform=${BUILDPLATFORM:-linux/amd64} ubuntu/mimir:2.10.0-22.04_stable AS base

RUN apt update && \
  apt install -y ca-certificates curl gcc libc6-dev vim-tiny wget 

ARG RUST_VERSION
# https://github.com/rust-lang/docker-rust/blob/master/1.75.0/buster/slim/Dockerfile
ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH \
    CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse \
    RUST_VERSION=${RUST_VERSION:-1.75.0}

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y && \
  cargo install cargo-chef
