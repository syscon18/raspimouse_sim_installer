#!/bin/bash -exv

UBUNTU_VER=$(lsb_release -sc)
ROS_VER=kinetic
[ "$UBUNTU_VER" = "trusty" ] && ROS_VER=indigo

sudo apt-get install ros-${ROS_VER}-desktop-full
sudo apt-get install ros-${ROS_VER}-gazebo-ros-control ros-${ROS_VER}-ros-controllers

source ~/catkin_ws/devel/setup.bash

roscd
cd ../src
[ -e "raspimouse_ros" ] || git clone https://github.com/ryuichiueda/raspimouse_ros.git
cd ..
source ~/catkin_ws/devel/setup.bash
catkin_make

roscd
cd ../src
[ -e "raspimouse_sim" ] || git clone https://github.com/rt-net/raspimouse_sim.git
cd ..
source ~/catkin_ws/devel/setup.bash
catkin_make

source ~/catkin_ws/devel/setup.bash

###HOW TO VERIFY###
# roslaunch raspimouse_gazebo raspimouse_with_samplemaze.launch 
# rosrun raspimouse_control controller_vel_publisher.py
