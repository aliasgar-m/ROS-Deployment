FROM scratch

LABEL Name="ROS Node Example"
LABEL Version="0.1"

# Make the user and group consistent and known.
ARG USER_ID=1004
ARG GROUP_ID=1000

# Run the following commands as the root user.
USER root

# Update PATH to include local pip installs.
ENV PATH="/home/ros/.local/bin:${PATH}"

# Workaround for sudo bug on Ubuntu Focal.
# https://unix.stackexchange.com/questions/578949/sudo-setrlimitrlimit-core-operation-not-permitted
# https://github.com/sudo-project/sudo/issues/42
RUN echo "Set disable_coredump false" >> /etc/sudo.conf

# Packages needed for various utility steps.
RUN apt-get update && apt-get install -y \
    build-essential curl file git locales sudo && \
    apt-get clean

# Set up the locale.
RUN locale-gen en_US en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8

# Statick npm tools.
# Have to install newer version from non-apt source due to SSL library compatibility issues.
# RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
# RUN bash nodesource_setup.sh
# RUN apt-get update && apt-get install -y nodejs && apt-get clean
# RUN npm config set prefix -g /usr
# RUN npm install -g markdownlint-cli@0.21.0

# Build and static analysis tools.
RUN apt-get update && apt-get install -y

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

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
