#!/bin/bash -exv

UBUNTU_VER=$(lsb_release -sc)
ROS_VER=kinetic
[ "$UBUNTU_VER" = "trusty" ] && ROS_VER=indigo

sudo apt-get install ros-${ROS_VER}-desktop-full
sudo apt-get install ros-${ROS_VER}-gazebo-ros-control ros-${ROS_VER}-ros-controllers

cd ~/catkin_ws/src/
git clone https://github.com/ryuichiueda/raspimouse_ros.git
git clone https://github.com/Tiryoh/raspimouse_sim.git

source ~/catkin_ws/devel/setup.bash

cd ~/catkin_ws
catkin_make

source ~/catkin_ws/devel/setup.bash

###HOW TO VERIFY###
# roslaunch raspimouse_gazebo raspimouse_with_samplemaze.launch 
# rosrun raspimouse_control controller_vel_publisher.py
