ARG ROS_DISTRO=melodic
FROM ros:$ROS_DISTRO-ros-core
LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Make the user and group consistent and known.
ARG USER_ID=1004
ARG GROUP_ID=1000

# Run the following commands as the root user.
USER root

# Update PATH to include local pip installs.
ENV PATH="/home/ros/.local/bin:${PATH}"

# Build and static analysis tools.
RUN apt-get update && \
    apt-get upgrade

# RUN apt install ros-melodic-desktop-full

# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN source ~/.bashrc
    
RUN apt-get python-rosdep \
    apt-get python-pip \
#     apt install python-catkin-tools \
#     apt upgrade libignition-math2 \
#     pip install shapely && \
#     pip install wstool

# RUN rosdep init

# RUN rosdep update

# RUN mkdir /home/ros/ws
