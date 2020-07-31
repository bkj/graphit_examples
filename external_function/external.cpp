#include "intrinsics.h"
#include "vertexsubset.h"

#include <stdio.h>

extern int * label;

int _my_external_function(NodeID v){
    label[v] += 1;
}