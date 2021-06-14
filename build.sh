rosdep init

# sudo rosdep fix-permissions

rosdep update

echo export ROS_DISTRO='melodic' >> ~/.bashrc

echo export ROS_PYTHON_VERSION='2' >> ~/.bashrc

source /opt/ros/melodic/setup.sh

catkin build

source environment.sh

source ./devel/setup.bash

source ./aliases

echo source ~/Orion/Desktop/Deployment-Test/devel/setup.bash >> ~/.bashrc
