# raspimouse_sim_installer

[![Build Status](https://travis-ci.org/ryuichiueda/raspimouse_sim_installer.svg?branch=master)](https://travis-ci.org/ryuichiueda/raspimouse_sim_installer)

Installer for raspimouse_sim

## supported version of ROS

* Indigo
* Kinetic

## how to use

A catkin workspace should be prepared beforehand.

```
$ ./install.bash
```

## how to check

Launch the simulator by
```
$ roslaunch raspimouse_gazebo raspimouse_with_samplemaze.launch 
```
and do
```
$ rosrun raspimouse_control controller_vel_publisher.py
```
on another terminal.

## reference

This code is derived from .travis.yml of [rt-net/raspimouse_sim](https://github.com/rt-net/raspimouse_sim).

Gazebo model download scripts are derived from [How to download all Gazebo models - HOME PAGE OF
HELIO PERRONI FILHO](http://machineawakening.blogspot.jp/2015/05/how-to-download-all-gazebo-models.html).
