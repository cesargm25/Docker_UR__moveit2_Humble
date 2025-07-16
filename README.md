# Docker scripts
Here are some scripts that can make using this project easier.\

Install Docker:

```bash 
# It's preferably to use -n flag that enables Nvidia drivers support.
bash install_docker.sh -n # (Re)install Docker
bash build_docker.sh -n # Build Docker container:
bash run_docker.sh -n # Run Docker container
```

You can access the running container:
```bash
bash into_docker.sh
```

Sources 

https://github.com/UniversalRobots/Universal_Robots_ROS2_Description
https://github.com/jannishaberhausen/robotiq_2f_gripper_ros2/tree/master
https://github.com/UniversalRobots/Universal_Robots_ROS2_Gazebo_Simulation

#Commands 

Command to open integration of ur3e with Robotiq 2F-140
just Moveit (Gazebo is still on process)
```bash
ros2 launch ur3e_moveit_config demo.launch.py
```
just visualization
```bash
ros2 launch ur_description view_gripper.launch.py
```
Moveit pkg name ur3e_moveit_config

##URDF 
at the moment there is not pkg created, but aditional files on the current pkgs (ur_description) 
urdf with integraion: ur3e.urdf.xacro 



🤖 Robot Integration
Current setup includes integration of UR3e with the Robotiq 2F-140 gripper using MoveIt 2. (Gazebo integration is in progress.)

Launch MoveIt with UR3e + Robotiq 2F-140:
bash
Copy
Edit
ros2 launch ur3e_moveit_config demo.launch.py
View robot + gripper URDF (only visualization):
bash
Copy
Edit
ros2 launch ur_description view_gripper.launch.py
MoveIt package name: ur3e_moveit_config

📦 URDF Files
There is no dedicated URDF package at the moment. Custom URDF and Xacro files are added directly into the existing ur_description package.

File with UR3e + Robotiq 2F-140 integration:

ur3e.urdf.xacro



