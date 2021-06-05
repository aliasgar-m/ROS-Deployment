FROM ubuntu:bionic

USER root

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PATH="/home/ros/.local/bin:${PATH}"
ENV ROS_DISTRO melodic

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc

RUN apt-get install -y \
    python-rosdep \
    python-pip \
    python-catkin-tools

RUN python -m pip install --upgrade pip
RUN pip install - y \
    shapely \
    wstool

# sudo apt upgrade libignition-math2



# ARG ROS_DISTRO=melodic
# FROM ros:$ROS_DISTRO-ros-core
# LABEL Name="ROS Node Example"
# LABEL Version="0.1"

# RUN apt install ros-melodic-desktop-full

# ARG USER_ID=1004
# ARG GROUP_ID=1000

# RUN apt-get clean

# RUN apt-get update && apt-get install -y \
#     python-rosdep \
#     python-pip \
#     python-wstool && \
#     python-shapely
    # python-catkin-tools

# RUN apt-get upgrade -y \ 
#     libignition-math2

# RUN pip install shapely && \
#     pip install wstool

# RUN rosdep init

# RUN rosdep update

# RUN mkdir /home/ros/ws
