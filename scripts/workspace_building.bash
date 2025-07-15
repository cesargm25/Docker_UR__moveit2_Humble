#!/bin/bash

EXEC_PATH=$PWD

mkdir -p ./ws_moveit/src && cd ./ws_moveit/src
git clone -b humble https://github.com/UniversalRobots/Universal_Robots_ROS2_Description.git
git clone -b humble https://github.com/UniversalRobots/Universal_Robots_ROS2_Gazebo_Simulation.git
git clone -b humble https://github.com/PickNikRobotics/ros2_robotiq_gripper.git

echo "DONE!!!   :) "

