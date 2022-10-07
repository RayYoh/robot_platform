#!/usr/bin/env python3
from meta.meta_base.base import *
from limb_core_msgs.srv import MetaServiceResponse
from limb_py.limb_py_utils import register_roscpp_node, create_limb_object


class MetaJointPlanning(Base):
    def __init__(self, limb_list=None):
        self._limb_list = limb_list

    def tick(self, task_name):
        print("recv: ", task_name)
        self._input = self.input_init(task_name, 'meta_joint_planning')
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
        print('cur_joint_pos: ', self.numpy2List(cur_joint_pos))

        cur_joint_vel = self._config.getCurrentJointVelocity()
        print('cur_joint_vel: ', self.numpy2List(cur_joint_vel))

        cur_joint_tor = self._config.getCurrentJointTorque()
        print('cur_joint_tor: ', self.numpy2List(cur_joint_tor))

        cur_joint_acc = self._config.getCurrentJointAcceleration()
        print('cur_joint_acc: ', self.numpy2List(cur_joint_acc))

        q_cmd = self.list2Numpy([0, 0, 0, -1.572, 1.57, 0])
        self._planning.jointPlanning(self._interface, q_cmd)

        print(limb_name + ': MetaJointPlanning success')
        return MetaServiceResponse(True, 'joint_planning')


if __name__ == '__main__':
    robot_name = 'ur10'
    rospy.init_node(robot_name+'_joint_planning', anonymous=True)
    register_roscpp_node(robot_name)
    limb_list = dict()
    limb_config_path = rospack.get_path('limb_config') + '/config/' + robot_name
    limb_list[robot_name] = create_limb_object(limb_config_path, robot_name+'.yaml')
    example = MetaJointPlanning(limb_list)
    example.tick('joint_planning')
