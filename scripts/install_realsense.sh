oot@tccw10roboticlab1-ThinkPad-L15-Gen-3:/ws_moveit# history
    1  clear
    2  ls
    3  cd ws_moveit/
    4  ls
    5  sudo mkdir -p /etc/apt/keyrings
    6  curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null
    7  sudo apt-get install apt-transport-https
    8  echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | sudo tee /etc/apt/sources.list.d/librealsense.list
    9  sudo apt-get update
   10  sudo apt-get install librealsense2-dkms
   11  sudo apt-get install librealsense2-utils
   12  sudo apt-get install librealsense2-dev
   13  sudo apt-get update
   14  sudo apt-get upgrade
   15  sudo apt-get install python3-rosdep -y
   16  sudo rosdep init # "sudo rosdep init --include-eol-distros" for Foxy and earlier
   17  rosdep update # "sudo rosdep update --include-eol-distros" for Foxy and earlier
   18  rosdep install -i --from-path src --rosdistro $ROS_DISTRO --skip-keys=librealsense2 -y
   19  colcon build
   20  source install/setup.sh
   21  rqt
   22  ros2 launch realsense2_camera rs_launch.py
   23  ros2 launch realsense2_camera rs_launch.py depth_module.depth_profile:=1280x720x30 pointcloud.enable:=true
   24  ros2 run realsense2_camera realsense2_camera_node
   25  ros2 launch realsense2_camera rs_launch.py
   26  ros2 launch realsense2_camera rs_launch.py depth_module.depth_profile:=1280x720x30 pointcloud.enable:=true
   27  ros2 run realsense2_camera realsense2_camera_node --ros-args -p enable_color:=false -p spatial_filter.enable:=true -p temporal_filter.enable:=true
   28  ros2 launch realsense2_camera rs_launch.py
   29  apt-cache search linux-headers-$(uname -r)
   30  ros2 launch realsense2_camera rs_launch.py
   31  ls
   32  history
   33  ros2 launch realsense2_camera rs_launch.py
   34  history



#!/bin/bash

EXEC_PATH=$PWD

cd ~/ws_moveit/

sudo mkdir -p /etc/apt/keyrings
curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null
sudo apt-get install -y apt-transport-https
echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | sudo tee /etc/apt/sources.list.d/librealsense.list
sudo apt-get update
#sudo apt-get install -y librealsense2-dkms # no compilar 
sudo apt-get install -y librealsense2-utils 
sudo apt-get install -y librealsense2-dev
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python3-rosdep -y
sudo rosdep init
rosdep update 

echo "!!!DONE!!!"

