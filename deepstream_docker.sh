# create a reusable script
echo "sudo docker run --runtime nvidia -it --rm --network host \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v /tmp/argus_socket:/tmp/argus_socket \
    -v ~/my_apps:/dli/task/my_apps \
    --device /dev/video0 \
    nvcr.io/nvidia/dli/dli-nano-deepstream:v2.0.0-DS6.0.1 " > ds_docker_run.sh

# make the script executable
sudo chmod +x ds_docker_run.sh

# run the script
sudo ./ds_docker_run.sh
