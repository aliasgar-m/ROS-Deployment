FROM ubuntu:bionic
LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Run the following commands as the root user.
USER root

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# install ros packages
# RUN apt-get clean
RUN apt-get update && apt-get install -y \
    ros-melodic-desktop-full \
    git 

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN echo "source ~/.bashrc"

RUN useradd -ms /bin/bash Orion
USER Orion

RUN mkdir -p /home/Orion/Desktop/
RUN cd /home/Orion/Desktop/ && git clone https://github.com/aliasgar-m/Deployment-Test.git
WORKDIR /home/Orion/Desktop/Deployment-Test
RUN ./setup.sh
# RUN ./build.sh
