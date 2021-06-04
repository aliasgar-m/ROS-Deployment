USER root

ENV PATH="/home/ros/.local/bin:${PATH}"

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

RUN apt-get update

RUN apt-get install ros-melodic-desktop-full

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc \
    source ~/.bashrc
    
RUN apt-get install python-rosdep \
    apt-get install python-pip \
    apt-get install python-catkin-tools \
    apt-get upgrade libignition-math2 \
    pip install shapely && \
    pip install wstool

RUN rosdep init

RUN rosdep update
