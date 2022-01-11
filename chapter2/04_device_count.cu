//
// Created by Administrator on 2021/12/28.
//
#include <memory>
#include <iostream>
#include <cuda_runtime.h>
#include <cstdio>

int main(void){

    int device_out = 0;
    cudaGetDeviceCount(&device_out);
    // this function returns count of number of cuda enable devices and
    // 0 if there are no cuda capable devices
    if(device_out == 0){
        printf("There are no available devices that support cuda \n");
    }else{
        printf("detected %d cuda capable devices\n", device_out);
    }
    return 0;
}





