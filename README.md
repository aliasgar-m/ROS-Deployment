# ROS-System
ROS System with Simulator

This is a skeleton repository for the autonomous code of a driverless FS race car. This README contains some information to get you started.

The use of Ubuntu 18.04 and ROS Meloic is assumed everywhere on this repository.

# Setting up the Workspace

**1 Initial setup**
```
chmod +x setup.sh

chmod +x setup.sh

./setup.sh

./update_dependencies -f

./build.sh

```

**2 Test setup**
```
roslaunch fssim_interface fssim.launch

*then, in a new terminal*

roslaunch control_meta trackdrive.launch

*again, in a new terminal*

rqt_graph

```
