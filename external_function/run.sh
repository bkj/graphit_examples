#!/bin/bash

# --
# Build

rm -f main
rm -f main.cpp

GRAPHIT_ROOT=/home/bjohnson/software/graphit

python $GRAPHIT_ROOT/build/bin/graphitc.py \
    -f "./main.gt"                         \
    -i "$GRAPHIT_ROOT/include/"            \
    -o main.cpp

g++ -std=c++14 -I "$GRAPHIT_ROOT/src/runtime_lib/" -O3 -o main main.cpp external.cpp

# --
# Run

./main