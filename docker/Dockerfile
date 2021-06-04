FROM scratch

LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Make the user and group consistent and known.
ARG USER_ID=1004
ARG GROUP_ID=1000

# Run the following commands as the root user.
USER rosdoc

RUN secho "rosdoc ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/rosdoc && \
    chmod 0440 /etc/sudoers.d/rosdoc

# Update PATH to include local pip installs.
ENV PATH="/home/ros/.local/bin:${PATH}"

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Build and static analysis tools.
RUN apt update

RUN apt install ros-melodic-desktop-full

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc
    
RUN apt install python-rosdep \
    apt install python-pip \
    apt install python-catkin-tools \
    apt upgrade libignition-math2 \
    pip install shapely && \
    pip install wstool

RUN rosdep init

RUN rosdep update
