ARG USER_ID=1004
ARG GROUP_ID=1000

USER root

ENV PATH="/home/ros/.local/bin:${PATH}"

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

RUN apt update

RUN apt install ros-melodic-desktop-full

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc \
    source ~/.bashrc
    
RUN apt install python-rosdep \
    apt install python-pip \
    apt install python-catkin-tools \
    apt upgrade libignition-math2 \
    pip install shapely && \
    pip install wstool

RUN rosdep init

RUN rosdep update
