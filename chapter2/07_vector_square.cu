#include <cstdio>
#include <iostream>
#include <cuda.h>
#include <cuda_runtime.h>

#define N 5

__global__ void gpuSquare(float *d_in, float *d_out){
    int tid = threadIdx.x;
    float temp = d_in[tid];
    d_out[tid] = temp * temp;
}

int main(void){
    float h_in[N], h_out[N];
    float *d_in, *d_out;

    // allocate the memory on the cpu
    cudaMalloc((void**)&d_in, N*sizeof(float));
    cudaMalloc((void**)&d_out, N*sizeof(float));
    for(int i=0; i<N; i++){
        h_in[i] = i;
    }

    // copy array from host to device
    cudaMemcpy(d_in, h_in, N*sizeof(float), cudaMemcpyHostToDevice);
    gpuSquare<<<1, N>>>(d_in, d_out);
    cudaMemcpy(h_out, d_out, N*sizeof(float), cudaMemcpyDeviceToHost);

    for(int i=0; i<N; i++){
        printf("the square of %f is %f\n", h_in[i], h_out[i]);
    }

    cudaFree(d_in);
    cudaFree(d_out);
    return 0;
}

