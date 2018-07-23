#!/usr/bin/env bash
export GOPATH=${SRC_DIR}

# Build
pushd "$GOPATH/src/github.com/terraform-providers/$PKG_NAME"
make build
make test

# Install Binary into PREFIX/bin
mkdir -p $PREFIX/bin
cp $GOPATH/bin/$PKG_NAME $PREFIX/bin/${PKG_NAME}_v${PKG_VERSION}_x4
