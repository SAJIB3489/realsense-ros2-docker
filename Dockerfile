FROM ros:jazzy-ros-base

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ros-jazzy-librealsense2*
RUN apt-get install -y ros-jazzy-realsense2-*