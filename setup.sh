#!/bin/bash

# Download CUDA 9.1
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
# Download CUDA 9.1 Patches (2018-10-01)
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/1/cuda_9.1.85.1_linux
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/2/cuda_9.1.85.2_linux
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/3/cuda_9.1.85.3_linux

chmod +x *linux*

./cuda_9.1.85_387.26_linux.run -extract=nvidia/
./cuda_9.1.85.2_linux.run -extract=nvidia/
./cuda_9.1.85.2_linux.run -extract=nvidia/
./cuda_9.1.85.3_linux.run -extract=nvidia/
