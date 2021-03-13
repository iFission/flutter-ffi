#include <iostream>

extern "C" __attribute__((visibility("default"))) __attribute__((used))


int get_sum(int a, int b){
    return a + b;
}