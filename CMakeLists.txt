cmake_minimum_required(VERSION 3.21)
project(cuda_tutorials CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(cuda_tutorials
#        chapter2/01_variable_addition_value.cu
#        chapter2/02_variable_addition_reference.cu
#        chapter2/03_thread_execution_example.cu
#        chapter2/04_device_count.cu
#        chapter2/05_vector_addition_cpu.cu
#        chapter2/06_vector_addition_gpu.cu
#        chapter2/07_vector_square.cu

#        chapter3/01_Large_threads_parallel.cu
#        chapter3/02_gpu_global_memory.cu
#        chapter3/03_gpu_local_memory.cu
#        chapter3/04_gpu_shared_memory.cu
#        chapter3/05_add_without_atomic.cu
#        chapter3/06_atomic_add.cu
#        chapter3/07_gpu_constant_memory.cu
#        chapter3/08_gpu_texture_memory.cu
#        chapter3/09_dot_product.cu
#        chapter3/10_matrix_multiplication.cu

        chapter4/01_performance_cuda_events.cu
        )

set_target_properties(${PROJECT_NAME} PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)














