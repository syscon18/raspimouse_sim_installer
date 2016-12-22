#!/bin/bash -exv

UBUNTU_VER=$(lsb_release -sc)
ROS_VER=kinetic
[ "$UBUNTU_VER" = "trusty" ] && ROS_VER=indigo

sudo apt-get install ros-${ROS_VER}-desktop-full
sudo apt-get install ros-${ROS_VER}-gazebo-ros-control ros-${ROS_VER}-ros-controllers

for repo in raspimouse_ros raspimouse_sim ; do
	source ~/catkin_ws/devel/setup.bash
	roscd
	cd ../src
	[ -e "${repo}" ] || git clone https://github.com/ryuichiueda/${repo}.git
	cd ..
	catkin_make
done

source ~/catkin_ws/devel/setup.bash

###HOW TO VERIFY###
# roslaunch raspimouse_gazebo raspimouse_with_samplemaze.launch 
# rosrun raspimouse_control controller_vel_publisher.py
