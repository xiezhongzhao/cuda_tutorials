//
// Created by Administrator on 2021/12/28.
//

#include <cstdio>
#include <iostream>
// define number of elements in array
#define N 5

//defining vector addition function for CPU
void cpuAdd(int *h_a, int *h_b, int *h_c){
    int tid = 0;
    while(tid < N){
        h_c[tid] = h_a[tid] + h_b[tid];
        tid += 1;
    }
}

int main(void){
    int h_a[N]={0}, h_b[N]={0}, h_c[N]={0};

    // initializing two arrays for addition
    for(int i=0; i<N; i++){
        h_a[i] = 2 * i*i;
        h_b[i] = i;
    }
    // call CPU function for vector addition
    cpuAdd(h_a, h_b, h_c);
    // printing answer
    printf("vector addition on CPU\n");
    for(int i=0; i<N; i++){
        printf("the sum of %d element is %d + %d = %d\n", i, h_a, h_b, h_c);
    }
    return 0;
}














