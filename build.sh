rosdep init

rosdep update

echo export ROS_DISTRO='melodic' >> ~/.bashrc

echo export ROS_PYTHON_VERSION='2' >> ~/.bashrc

catkin build

source environment.sh

# source /home/Desktop/Deployment-Test/devel/setup.bash

source ./aliases

# echo source /home/Desktop/Deployment-Test/devel/setup.bash >> ~/.bashrc