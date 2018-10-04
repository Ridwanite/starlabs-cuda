# starlabs-cuda

Before beginning, disable the Nvidia GPU in the BIOS by booting the computer whilst tapping F2.

### Remove previous install
Remove all existing Nvidia files with the below command
```
sudo apt purge *nvidia*
```
### Install dependancies
```
sudo apt install build-essential libelf-dev
```
### Blacklist Nouveau
```
echo "# Blacklisting nouveau\nblacklist nouveau\nblacklist lbm-nouveau\nalias nouveau off\nalias lbm-nouveau off\noptions nouveau modeset=0" | sudo tee -a /etc/modprobe.d/blacklist.conf
sudo update-initramfs -u -k all
sudo systemctl mask gpu-manager.service
```

### Download CUDA
```
wget https://developer.download.nvidia.com/compute/cuda/10.0/secure/Prod/local_installers/cuda_10.0.130_410.48_linux.run?A0ImldWIDBYEavHhvr9LAx3cvxA-sFFz-NorUI9p32djfBv3YwMtbSANXF6BUIsV9uoZNQBkXgyzF1tBJyw8x5rBEOVx9pSBSng_WUJaNYlDC-BeJZ-b9gHgQyDAQTWEUB-wz9MNIOVjSDl78o_qFlow34tSmSxbfV5s2F7PMD0vYBUWrBwgtSsVPDo
```

### Extract CUDA
```
sudo sh cuda_10.0.130_410.48_linux.run --extract=~/Downloads/cuda-extracted
```

### Enable GPU
Go back to the BIOS and renable the GPU

### Install Nvidia driver
```
sudo sh NVIDIA-Linux-x86_64-410.48.run --no-opengl-files --no-drm
```

### Disable GPU
Go back to the BIOS and disable the GPU

### Install CUDA
```
sudo sh cuda-linux.10.0.130-24817639.run
```

### Enable GPU
Go back to the BIOS and enable the GPU

