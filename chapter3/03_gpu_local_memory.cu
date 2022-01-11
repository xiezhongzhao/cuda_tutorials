#include <cstdio>
#define N 5

__global__ void gpu_local_memory(int d_in){
    int t_local;
    t_local = d_in * threadIdx.x;
    printf("value of local variable in current thread is %d \n", t_local);
}

int main(int argc, char **argv){
    printf("use of local memory on GPU \n");
    gpu_local_memory<<<1,N>>>(5);
    cudaDeviceSynchronize();
    return 0;
}


