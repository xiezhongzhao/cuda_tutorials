//
// Created by Administrator on 2021/12/28.
//

#include <iostream>
#include <cstdio>

__global__ void myfirstkernel(void){
    //blockIdx.x gives the block number of current kernel
    printf("hello!!! I am thread in block: %d\n", blockIdx.x);
}

int main(void){
    // a kernel call with 16 blocks and 1 thread per block
    myfirstkernel<<<16,1>>>();
    // function used for waiting for all kernels to finish
    cudaDeviceSynchronize();
    printf("All threads are finished!\n");
    return 0;
}



