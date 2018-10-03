# Download installers
mkdir ~/Downloads/nvidia
cd ~/Downloads/nvidia

# Download CUDA 9.1
#wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
# Download CUDA 9.1 Patches (2018-10-01)
#wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/1/cuda_9.1.85.1_linux
#wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/2/cuda_9.1.85.2_linux
#wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/3/cuda_9.1.85.3_linux
# Download CUD 10.0 (Ubuntu 18.04)
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux
# Download NVIDIA Drivers 390-87
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/390.87/NVIDIA-Linux-x86_64-390.87.run
# Add Permission to Execute
#chmod +x NVIDIA-Linux-x86_64-390.87.run
#chmod +x cuda_9.1.85_387.26_linux.run
#chmod +x cuda_9.1.85.1_linux
#chmod +x cuda_9.1.85.2_linux
#chmod +x cuda_9.1.85.3_linux
chmod +x cuda_10.0.130_410.48_linux
# Extract CUDA Archives
#./cuda_9.1.85_387.26_linux.run -extract=~/Downloads/nvidia/
#./cuda_9.1.85.2_linux.run -extract=~/Downloads/nvidia/
#./cuda_9.1.85.2_linux.run -extract=~/Downloads/nvidia/
#./cuda_9.1.85.3_linux.run -extract=~/Downloads/nvidia/
./cuda_10.0.130_410.48_linux -extract=~/Downloads/nvidia/

# Uninstall old stuff
#sudo apt-get --purge remove nvidia-*
#sudo nvidia-uninstall

# Reboot
#sudo shutdown -r now
# In grub boot menu hit `e` and add `nouveau.modeset=0` to the end of the line beginning with `linux`
# F10 to boot
# CTRL+ALT+F1 and log in
sudo service lightdm stop
sudo ./NVIDIA-Linux-x86_64-390.87.run --no-opengl-files
sudo ./cuda_9.1.85_387.26_linux.run --no-opengl-libs
# Verify installation
nvidia-smi
cat /proc/driver/nvidia/version
