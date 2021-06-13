#!/bin/bash

apt-get install python-rosdep python-catkin-tools python-pip -y

apt-get install python-rosinstall python-rosinstall-generator checkinstall git-lfs -y

python -m pip install --upgrade pip

pip install shapely wstool setuptools

apt-get upgrade libignition-math2 -y
