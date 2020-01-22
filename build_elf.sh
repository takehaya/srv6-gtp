#!/bin/bash

prog_dir=./build/bpfprog
include_dir=./include
rm -rf $prog_dir
mkdir -p $prog_dir
cp ./Makefile-bpf $prog_dir/Makefile
cp -r ./src $prog_dir
cp -r ./include $prog_dir
pushd $prog_dir
bear make EXTRA_CFLAGS="$*"
popd
cp $prog_dir/src/srv6.o ./out/