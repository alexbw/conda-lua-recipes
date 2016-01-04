#!/bin/bash

# Check we're using clang, first of all
export MACOSX_DEPLOYMENT_TARGET=10.10

# Download clang
# curl -O http://llvm.org/releases/3.5.2/clang+llvm-3.5.2-x86_64-apple-darwin.tar.xz
# cp /Users/Alex/Desktop/clang+llvm-3.5.2-x86_64-apple-darwin.tar.xz $SRC_DIR
# tar -xzvf $SRC_DIR/clang+llvm-3.5.2-x86_64-apple-darwin.tar.xz
# mv $SRC_DIR/clang+llvm-3.5.2-x86_64-apple-darwin/ $SRC_DIR/conda/
# echo "LLVM_CONFIG="$SRC_DIR"/conda/bin/llvm-config" > $SRC_DIR/Makefile.inc
# ABW:
# make CC=$SRC_DIR/conda/bin/clang CXX=$SRC_DIR/conda/bin/clang++

echo "LLVM_CONFIG=/usr/local/opt/llvm35/bin/llvm-config-3.5" > $SRC_DIR/Makefile.inc
make CC=/usr/local/bin/clang-3.5 CXX=/usr/local/bin/clang++-3.5