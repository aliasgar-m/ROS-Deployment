#!/bin/bash

sudo apt install -y \
    python-rosdep \
    python-catkin-tools \
    python-pip \
    rosinstall \
    rosinstall-generator \
    checkinstall \
    git-lfs

sudo python -m pip install --upgrade pip

pip install -y \
    shapely \
    wstool \
    setuptools

sudo apt upgrade libignition-math2
