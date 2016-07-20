#!/bin/bash

mkdir -p build
rm -r build/*
CWD=`pwd`
cp data/* build &&
cd build && cmake $CWD/code -DFABM_BASE=$FABMDIR \
-DFABM_NIVA_BASE=$CWD/../fabm-brom-git -DCMAKE_BUILD_TYPE=Debug
