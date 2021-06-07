cmake_minimum_required(VERSION 2.8.3)
project(talker)

#add_compile_options(-std=c++11)

set(PROJECT_DEPS
  rospy
  std_msgs
  )

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  )

catkin_package(
  INCLUDE_DIRS
  LIBRARIES
  CATKIN_DEPENDS
  DEPENDS
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${rospy_INCLUDE_DIRS}
)

# Each node in the package must be declared like thisC
catkin_install_python(PROGRAMS scripts/talker.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
