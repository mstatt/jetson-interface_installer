sudo apt install \
libssl1.1 \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
libgstreamer-plugins-base1.0-dev \
libgstrtspserver-1.0-0 \
libjansson4 \
libyaml-cpp-dev \
gcc \
make \
git \
python3

wget https://developer.download.nvidia.com/compute/cuda/11.7.1/local_installers/cuda-repo-debian11-11-7-local_11.7.1-515.65.01-1_amd64.deb
sudo dpkg -i cuda-repo-debian11-11-7-local_11.7.1-515.65.01-1_amd64.deb
sudo rm /etc/apt/sources.list.d/*cuda*
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda

sudo apt-get install libnvinfer8=8.4.1-1+cuda11.6 libnvinfer-plugin8=8.4.1-1+cuda11.6 libnvparsers8=8.4.1-1+cuda11.6 \
  libnvonnxparsers8=8.4.1-1+cuda11.6 libnvinfer-bin=8.4.1-1+cuda11.6 libnvinfer-dev=8.4.1-1+cuda11.6 \
  libnvinfer-plugin-dev=8.4.1-1+cuda11.6 libnvparsers-dev=8.4.1-1+cuda11.6 libnvonnxparsers-dev=8.4.1-1+cuda11.6 \
  libnvinfer-samples=8.4.1-1+cuda11.6 libcudnn8=8.4.1.50-1+cuda11.6 libcudnn8-dev=8.4.1.50-1+cuda11.6 \
  python3-libnvinfer=8.4.1-1+cuda11.6 python3-libnvinfer-dev=8.4.1-1+cuda11.6

git clone https://github.com/edenhill/librdkafka.git
git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a ./configure
make
sudo make install


sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.1/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.1/lib


wget https://developer.nvidia.com/deepstream-6.1_6.1.1-1_amd64.deb
sudo tar -xvf deepstream_sdk_v6.1.1_x86_64.tbz2 -C /
cd /opt/nvidia/deepstream/deepstream-6.1/
sudo ./install.sh
sudo ldconfig


sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.1/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.1/lib

#sudo apt-get install ./deepstream-6.1_6.1.1-1_arm64.deb
sudo nvpmodel -m 0
sudo jetson_clocks
