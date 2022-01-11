//
// Created by Administrator on 2021/12/28.
//
#include <iostream>
#include <cuda.h>
#include <cuda_runtime.h>
#include <cstdio>

// kernel function to add two variables, parameter are passed by reference
__global__ void gpuAdd(int *d_a, int *d_b, int *d_c){
    *d_c = *d_a + *d_b;
}

int main(void){
    // define host variables
    int h_a, h_b, h_c;
    // define device pointers
    int *d_a, *d_b, *d_c;
    // initializing host varibles
    h_a = 1;
    h_b = 4;

    // allocating memory for devices pointers
    cudaMalloc((void**)&d_a, sizeof(int));
    cudaMalloc((void**)&d_b, sizeof(int));
    cudaMalloc((void**)&d_c, sizeof(int));

    // copy value of host variable in device memory
    cudaMemcpy(d_a, &h_a, sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, &h_b, sizeof(int), cudaMemcpyHostToDevice);
    // call kernel with one thread and one block with parameter passed by reference
    gpuAdd<<<1,1>>>(d_a, d_b, d_c);

    //copying result from device to host
    cudaMemcpy(&h_c, d_c, sizeof(int), cudaMemcpyDeviceToHost);
    printf("passing parameter by reference output: %d + %d = %d\n", h_a, h_b, h_c);

    // free up memory
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);

    return 0;
}














