FROM scratch

ENV PATH="/home/ros/.local/bin:${PATH}"

RUN apt-get clean

RUN apt-get update

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

RUN apt install ros-melodic-desktop-full

RUN python -m pip install --upgrade pip

# RUN apt-get install -y \
#     python-rosdep \
#     python-pip \
#     python-wstool && \
#     python-shapely


# ARG ROS_DISTRO=melodic
# FROM ros:$ROS_DISTRO-ros-core
# LABEL Name="ROS Node Example"
# LABEL Version="0.1"

# ARG USER_ID=1004
# ARG GROUP_ID=1000

# USER root

# ENV PATH="/home/ros/.local/bin:${PATH}"

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

# RUN apt install ros-melodic-desktop-full

# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN source ~/.bashrc

# RUN rosdep init

# RUN rosdep update

# RUN mkdir /home/ros/ws
