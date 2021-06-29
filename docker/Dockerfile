FROM ubuntu:18.04
LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Run the following commands as the root user.
USER root

# set timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata

# install packages for setup
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    apt-utils \
    dirmngr \
    gnupg2 \
    git

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# install packages for ROS
RUN apt-get update && apt-get install -y \
    ros-melodic-desktop-full

# source ROS Files
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN echo "source ~/.bashrc"

# clone workspace
RUN mkdir -p ~/Desktop/
RUN cd ~/Desktop/ && git clone https://github.com/aliasgar-m/ROS-Deployment.git
WORKDIR /root/Desktop/ROS-Deployment
ARG CACHEBUST
RUN git pull

# # install dependencies and build
RUN ./setup.sh
RUN ./build.sh

CMD ["/bin/bash", "roscore"]