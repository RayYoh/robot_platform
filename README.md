# UR10 Robot Simulation
This repo contains some essential files for the simulation of UR10 robot by MuJoCo.

## ur10_sim
This fold contains description files (urdf and xml) of the platform.  

The `ur10_robot.urdf` file comes from [ur_description](http://wiki.ros.org/ur_description) (ur10_robot.urdf.xacro).  
One can transfer urdf from xacro by:
```
rosrun xacro xacro --inorder ur10_robot.urdf.xacro > ur10_robot.urdf
```
And then, xml file can be obtained by MuJoCo:
```angular2html
./compile /path/to/ur10_robot.urdf /path/to/ur10_robot.xml
```

## ur10_mujoco_ros
Control the robot in MuJoCo by ROS.

## ur10_mujoco_gym
Gym style interface and environments for reinforcement learning. (Some code borrowed from `gym`)

## Summary
This repository is not only for UR10, you can use this pipeline to build your own robot environment.