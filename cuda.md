# Disable GPU
echo "Disable GPU in BIOS"

# Install dependancies
sudo apt install build-essential libelf-dev

# Download CUDA
wget https://developer.download.nvidia.com/compute/cuda/10.0/secure/Prod/local_installers/cuda_10.0.130_410.48_linux.run?A0ImldWIDBYEavHhvr9LAx3cvxA-sFFz-NorUI9p32djfBv3YwMtbSANXF6BUIsV9uoZNQBkXgyzF1tBJyw8x5rBEOVx9pSBSng_WUJaNYlDC-BeJZ-b9gHgQyDAQTWEUB-wz9MNIOVjSDl78o_qFlow34tSmSxbfV5s2F7PMD0vYBUWrBwgtSsVPDo

# Blacklist Nouveau
echo "# Blacklisting nouveau\nblacklist nouveau\nblacklist lbm-nouveau\nalias nouveau off\nalias lbm-nouveau off\noptions nouveau modeset=0" | sudo tee -a /etc/modprobe.d/blacklist.conf
sudo update-initramfs -u -k -all
sudo systemctl mask gpu-manager.service


# REBOOT #
echo "Enable GPU in BIOS"

# Extract CUDA
sudo sh cuda_10.0.130_410.48_linux.run --extract=/home/star/Downloads/extracted

# Install 410 driver
sudo sh NVIDIA-Linux-x86_64-410.48.run --no-opengl-files --no-drm

# REBOOT #
echo "Disable GPU in BIOS"


# Install CUDA

sudo sh cuda-linux.10.0.130-24817639.run

# REBOOT #
echo "Enable GPU in BIOS
