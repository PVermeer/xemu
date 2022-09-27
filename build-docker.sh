#!/usr/bin/env bash

docker run -u $(id -u):$(id -g) --rm -v $PWD/xemu:/xemu -w /xemu \
    -e CCACHE_DIR=/xemu/ccache \
    mborgerson/xemu-ubuntu-win64-cross:latest \
    ./build.sh -p win64-cross
