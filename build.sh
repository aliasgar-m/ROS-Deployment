#!/bin/bash

sudo rosdep fix-permissions

rosdep init

rosdep update

echo export ROS_DISTRO='melodic' >> ~/.bashrc

echo export ROS_PYTHON_VERSION='2' >> ~/.bashrc

source /opt/ros/melodic/setup.bash

catkin build

source environment.sh

source ./devel/setup.bash

source ./aliases

echo source ${DEPLOY_ROOT}/devel/setup.bash >> ~/.bashrc

echo source ${DEPLOY_ROOT}/aliases >> ~/.bashrc