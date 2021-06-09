#!/bin/bash

sudo apt install python-rosdep python-catkin-tools python-pip -y

sudo apt install rosinstall rosinstall-generator checkinstall git-lfs -y

sudo python -m pip install --upgrade pip

pip install shapely wstool setuptools

sudo apt upgrade libignition-math2 -y
