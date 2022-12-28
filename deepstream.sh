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
libyaml-cpp-dev


git clone https://github.com/edenhill/librdkafka.git

sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.1/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.1/lib

sudo apt-get install ./deepstream-6.1_6.1.1-1_arm64.deb
sudo nvpmodel -m 0
sudo jetson_clocks
