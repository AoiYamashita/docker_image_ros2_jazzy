FROM nvcr.io/nvidia/cuda:13.0.0-devel-ubuntu24.04

WORKDIR /root/ros2_ws
# set locate,time zone,lang
RUN apt-get update && apt-get install -y locales \
    && locale-gen en_US en_US.UTF-8 \
    && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
# copy bash file of ros2 setup
COPY ./ros2_setup.sh /root/
RUN bash /root/ros2_setup.sh

# remove cache of apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/*