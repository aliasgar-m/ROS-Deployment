FROM osrf/ros:melodic-desktop-stretch

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*


# ARG ROS_DISTRO=melodic
# FROM ros:$ROS_DISTRO-ros-core
# LABEL Name="ROS Node Example"
# LABEL Version="0.1"

# USER root

# ENV PATH="/home/ros/.local/bin:${PATH}"







# RUN apt install ros-melodic-desktop-full

# RUN python -m pip install --upgrade pip

# RUN apt-get install -y \
#     python-rosdep \
#     python-pip \
#     python-wstool && \
#     python-shapely

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

# RUN apt install ros-melodic-desktop-full

# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN source ~/.bashrc

# RUN rosdep init

# RUN rosdep update

# RUN mkdir /home/ros/ws
