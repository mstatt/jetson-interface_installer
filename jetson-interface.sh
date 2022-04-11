#!/bin/sh
#---------------------------------------------------------------
# This script is designed to download and build the jetson -interface repository for you to have the basics for development and testing on the Nvidia Jetson nano.
# The script will download the jetson-interface repo to the same location as the script.
#
# This was scripted on a Nvidia Jetson Nano 4GB with wifi module and a flashed SD card.
#
# This is assuming that your user has been added to the sudo group
# if not you can run the followiing command to add them:
# >> sudo usermod -a -G sudo <username>
#
# The command below adds the user to the root users group:
# >> sudo usermod -a -G root <username>
#
# Prior to running the scropt make it executable with the terminal command below:
# >> sudo  chmod u+x jetson-interface.sh
#
# If you run into permissions issues while trying to run the scripts in the jetson-interface/build/aarch64/bin directory run the following command to take ownership of the directory:
# *** Run this command from the same directory as the jetson-interface folder is in *****
# >> sudo chown <username> -R jetson-interface/

# Some extra commands:
# Max performance >> sudo jetson_clocks

# To view system performance:
# >> sudo jtop

# To change the fan speed: values range from 0-255:
# The command below sets fan to ~50%
# >> sudo sh -c 'echo 128 > /sys/devices/pwm-fan/target_pwm'
# The command below sets fan to 100%
# >> sudo sh -c 'echo 254 > /sys/devices/pwm-fan/target_pwm'
#---------------------------------------------------------------
sudo apt-get update
# Install dependencies
sudo apt-get install -y git wget cmake
sudo apt-get install -y python3-dev python3-numpy python3-pip
sudo apt-get install -y libpython3-dev libpng-dev libtiff-dev
sudo apt-get install -y qtbase5-dev libjpeg-dev
sudo apt-get install -y build-essential unzip pkg-config
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libgtk2.0-dev libcanberra-gtk*
sudo apt-get install -y libxvidcore-dev libx264-dev libgtk-3-dev
sudo apt-get install -y libtbb2 libtbb-dev libdc1394-22-dev
sudo apt-get install -y libv4l-dev v4l-utils telegraf
sudo apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt-get install -y libavresample-dev libvorbis-dev libxine2-dev
sudo apt-get install -y libfaac-dev libmp3lame-dev libtheora-dev libopencore-amrnb-dev
sudo apt-get install -y libopenblas-dev libatlas-base-dev libblas-dev
sudo apt-get install -y liblapack-dev libeigen3-dev gfortran
sudo apt-get install -y libhdf5-dev protobuf-compiler python3-venv
sudo apt-get install -y libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo -H pip3 install -U jetson-stats
sudo pip3 install Jetson.GPIO
sudo apt-get install jtop -y
# Adding Sublime text editor
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update 
sudo apt-get install -y sublime-text
# Download the correct Jetson Interface repo and build it with cmake
git clone --recursive https://github.com/dusty-nv/jetson-inference
cd jetson-inference
git submodule update --init
mkdir build
cd build
cmake ../
make -j$(nproc)
sudo make install

sudo iw dev wlan0 set power_save off
sudo apt-get update
sudo apt-get upgrade

sudo sh -c "echo '/usr/local/cuda/lib64' >> /etc/ld.so.conf.d/nvidia-tegra.conf"
sudo ldconfig

# Update again and reboot
sudo apt-get update
sudo shutdown -r now