FROM scratch
# ARG ROS_DISTRO=melodic
# FROM ros:$ROS_DISTRO-ros-core

ARG USER_ID=1004
ARG GROUP_ID=1000

USER root

ENV PATH="/home/ros/.local/bin:${PATH}"

RUN echo "Set disable_coredump false" >> /etc/sudo.conf

RUN echo "ros ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/ros && \
    chmod 0440 /etc/sudoers.d/ros

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

RUN apt-get update && apt-get install -y \
    build-essential curl file git locales sudo && \
    apt-get clean

RUN apt install ros-melodic-desktop-full

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc \
    source ~/.bashrc
    
RUN apt install python-rosdep \
    apt install python-pip \
    apt install python-catkin-tools \
    apt upgrade libignition-math2 \
    pip install shapely && \
    pip install wstool

RUN rosdep init

RUN rosdep update
