#!/bin/bash

CATKIN_SHELL=bash

export DEPLOY_ROOT=$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)

printf "Sourcing ROS Docker/devel/setup.bash\n"

# check whether devel folder exists
if [ -f "${DEPLOY_ROOT}/devel/setup.bash" ]; then
    # source setup.sh from same directory as this file
    source "${DEPLOY_ROOT}/devel/setup.bash"
else
    source "/opt/ros/melodic/setup.bash"
    printf "You need to build first before you can source\n"
    printf "Run 'catkin build' in the skeleton_repo directory\n"
fi

source ${DEPLOY_ROOT}/aliases
