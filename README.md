# Docker image for ROS 2 Jazzy on Ubuntu 24.04
This image is designed for the Jetson Orin Nano Developer Kit.

# build
```bash
docker build -t ros2_jazzy ./
```
# test image and container
run ros2 demo codes.use 2 terminals, A and B
## terminal A
```bash
docker run -it --rm --name test ros2_jazzy
```
```bash
# in container 
ros2 run demo_nodes_py talker
```
## terminal B
```bash
docker exec -it test bash
```
```bash
# in container
ros2 run demo_nodes_py listener
```
# use image
```bash
docker run -it ros2_jazzy
```
```bash
docker exec -it ros2_jazzy bash
```