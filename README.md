# raspimouse_sim_installer
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

This code is derived from .travis.yml of https://github.com/rt-net/raspimouse_sim .
