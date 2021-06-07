FROM ubuntu:bionic
LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Run the following commands as the root user.
USER root

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2
#     && rm -rf /var/lib/apt/lists/*

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup environment
# ENV LANG C.UTF-8
# ENV LC_ALL C.UTF-8

# ENV PATH="/home/ros/.local/bin:${PATH}"
# ENV ROS_DISTRO melodic

# install ros packages

# RUN apt-get clean
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0*
    # && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python-rosdep \
        python-pip \
        python-rosinstall \
        python-rosinstall-generator \
        python-shapely \
        python-wstool 
    # && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip

RUN pip install -U catkin_tools

# RUN apt-get upgrade -y \
#     libignition-math2

RUN rosdep init
RUN rosdep update

RUN echo "source opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN echo "source ~/.bashrc"
