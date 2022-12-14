#!/usr/bin/env python3
import os
import time
from meta.meta_base.base import *
from limb_core_msgs.srv import MetaServiceResponse
from limb_py.limb_py_utils import register_roscpp_node, create_limb_object


class MetaPythonExample(Base):
    def __init__(self, limb_list=None):
        self._limb_list = limb_list

    def tick(self, task_name):
        print("recv: ", task_name)
        self._input = self.input_init(task_name, 'meta_python_example')
        print('input: ', self._input)
        limb_name = self._input['Robot']['arm'][0]
        print('limb_name: ', limb_name)
        self._config = self._limb_list[limb_name]._config
        self._kinematics = self._limb_list[limb_name]._kinematics
        self._dynamics = self._limb_list[limb_name]._dynamics
        self._planning = self._limb_list[limb_name]._planning
        self._interface = self._limb_list[limb_name]._interface

        DoF = self._config.getDoF()
        print('DoF: ', DoF)

        joint_name = self._config.getJointName()
        print('joint_name: ', joint_name)

        cur_joint_pos = self._config.getCurrentJointPosition()
        print('cur_joint_pos: ', cur_joint_pos)

        cur_joint_vel = self._config.getCurrentJointVelocity()
        print('cur_joint_vel: ', cur_joint_vel)

        cur_joint_tor = self._config.getCurrentJointTorque()
        print('cur_joint_tor: ', cur_joint_tor)

        cur_joint_acc = self._config.getCurrentJointAcceleration()
        print('cur_joint_acc: ', cur_joint_acc)

        cmd_joint_pos = self._config.getCommandJointPosition()
        print('cmd_joint_pos: ', cmd_joint_pos)

        cmd_joint_vel = self._config.getCommandJointVelocity()
        print('cmd_joint_vel: ', cmd_joint_vel)

        cmd_joint_acc = self._config.getCommandJointAcceleration()
        print('cmd_joint_acc: ', cmd_joint_acc)

        cmd_joint_tor = self._config.getCommandJointTorque()
        print('cmd_joint_tor: ', cmd_joint_tor)

        cur_x = self._config.getEndpointRPYPose()
        print('cur_x: ', cur_x)

        cur_pose = self._config.getEndpointQuaternionPose()
        print('cur_pose: ', cur_pose)

        cur_twist = self._config.getEndpointTwist()
        print('cur_twist: ', cur_twist)

        cur_wrench = self._config.getEndpointWrench()
        print('cur_wrench: ', cur_wrench)

        ft_wrench_tool = self._config.getEndpointFTWrenchTool()
        print('ft_wrench_tool: ', ft_wrench_tool)

        ft_wrench_world = self._config.getEndpointFTWrenchWorld()
        print('ft_wrench_world: ', ft_wrench_world)

        print('cur_joint_pos', cur_joint_pos)
        print('cur_pose', cur_pose)
        # qout = self._kinematics.calInverseKinematics(cur_joint_pos, cur_pose)
        # _ = self._interface.setJointPosition(qout)

        q_cmd = self.list2Numpy([0, 0.2, 0, 0, 0, 0])
        self._planning.jointPlanning(self._interface, q_cmd)
        cur_pose[2] -= 0.1
        self._planning.endpointPlanning(self._interface, cur_pose)

        print(limb_name + ': MetaPythonExample success')
        return MetaServiceResponse(True, 'python_example')


if __name__ == '__main__':
    robot_name = 'franka_panda'
    rospy.init_node(robot_name+'_joint_planning', anonymous=True)
    register_roscpp_node(robot_name)
    limb_list = dict()
    limb_config_path = rospack.get_path('limb_config') + '/config/' + robot_name
    print(limb_config_path)
    limb_list[robot_name] = create_limb_object(limb_config_path, robot_name+'.yaml')
    example = MetaPythonExample(limb_list)
    example.tick('python_example')
