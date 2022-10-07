# Robot Platform
This repo contains some essential files for the simulation of UR10 robot and Franka Panda by MuJoCo.

## Franka Panda Platform
This fold contains description files (urdf and xml) of the Franka Panda platform.

`panda_ee_ctrl.xml` is used for Cartesian Space control.  
`panda_joint_ctrl.xml` is used for joint space control.
## UR10 Platform
This fold contains description files (urdf and xml) of the UR10 robot platform.  

The `ur10_robot.urdf` file comes from [ur_description](http://wiki.ros.org/ur_description) (ur10_robot.urdf.xacro).  
One can transfer urdf from xacro by:
```
rosrun xacro xacro --inorder ur10_robot.urdf.xacro > ur10_robot.urdf
```
And then, xml file can be obtained by MuJoCo:
```
./compile /path/to/ur10_robot.urdf /path/to/ur10_robot.xml
```
`robotiq_2f85` contains description files of the gripper.  
In `ur10_ee_ctrl.xml`, the gripper is not added to the end of the robot.  
In `ur10_joint_ctrl.xml`, the gripper is added, but it can not be controlled (There is no actuator to control it).

## Franka Panda Environment
Gym-style interface and simulation environment of Franka Panda for reinforcement learning. (Some code borrowed from `gym`)  
Action Space: Cartesian Space position (no orientation)  
**BUG:** The orientation may change, and now it has not be fixed.

## UR10 Environment
Gym-style interface and simulation environment of Franka Panda for reinforcement learning. (Some code borrowed from `gym`)  
Action Space: Cartesian Space position (have orientation, but it is designed to not change the orientation)  
**BUG:** The orientation may change, and now it has not be fixed.

## Robot Workspace
Use MuJoCo to simulate the robot  and use ROS to control the robot. One can test his/her algorithms in this simulation environment, and then transfer his/her method to the real robot.

## Log
- 20220901
    - The training is not stable. Reason (maybe): sometimes the position is hard for robot to reach. (Solution: modify `robot_end_pose`).
    - The training process maybe be studk in local optimum. (Don't know the reason now.)
- 20220913
    - Ubuntu 18.04 libboost_system.so.1.65.1
- 20220929
    - Ubuntu 20.04 