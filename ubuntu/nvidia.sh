sudo add-apt-repository ppa:graphics-drivers/ppa
sudo dpkg --add-architecture i386 
sudo apt update
sudo apt install nvidia-driver-430 libnvidia-gl-430 libnvidia-gl-430:i386
sudo apt install libvulkan1 libvulkan1:i386
