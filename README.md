# Docker image for ROS 2 Jazzy on Ubuntu 24.04
This image is designed for the Jetson Orin Nano Developer Kit.
The Dockerfile is based on the official [Jetson Orin Nano Developer Kit documentation](https://docs.nvidia.com/jetson/orin-nano-devkit/user-guide/latest/setup_docker.html)
The ros2_setup.sh script is based on the official [ROS 2 Jazzy installation guide](https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html).

# build
Run the following command from the root directory of the repository.
```bash
docker build -t ros2_jazzy ./
```
# test image and container
run ros2 demo codes in container.
use 2 terminals, A and B.
## terminal A
```bash
# make and run a container from image
docker run -it --rm --name test ros2_jazzy

# in the container 
ros2 run demo_nodes_py talker
```
## terminal B
```bash
# enter the container
docker exec -it test bash

# inside the container
ros2 run demo_nodes_py listener
```
# use image
basic usage of conteiner from image.
```bash
docker run -it --name <container_name> ros2_jazzy
```
```bash
docker exec -it <container_name> bash
```