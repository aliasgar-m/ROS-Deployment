#!/bin/bash

sudo apt-get install python-rosdep python-catkin-tools python-pip -y

sudo apt-get install rosinstall rosinstall-generator checkinstall git-lfs -y

sudo python -m pip install --upgrade pip

pip install shapely wstool setuptools

sudo apt-get upgrade libignition-math2 -y
