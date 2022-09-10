#!/usr/bin/env python3
from os.path import dirname, join, abspath

from robot_env import RobotEnv
import numpy as np
import time
# from os import path
# d = path.dirname(__file__)

import rospy
from limb_core_msgs.msg import JointState, JointCommand, Float64MultiArray, MarkerStringArray, EndpointState, EndpointStates
import threading
from std_msgs.msg import String
from copy import deepcopy

from geometry_msgs.msg import Pose

class RobotSimulation(object):
    def __init__(self, model_path):
        self.env = RobotEnv(model_path)
        print(self.env.get_joint_name())
        self.rosInit()

    def threadInit(self):
        threads = []
        # t1 = threading.Thread(target=self.rosPub)
        # threads.append(t1)
        t2 = threading.Thread(target=self.step)
        threads.append(t2)

        # t1.start()
        t2.start()
        # t1.join()
        t2.join()

        print('thread init')


        # threads.append(step)
        # threads.append(ros_pub)
        # for t in threads:
        #     t.setDaemon(True)
        #     t.start()

    def rosInit(self):
        rospy.init_node('robot_sim')

        self.robot_list = ['franka_panda']
        self.robot_cmd_sub_callback = {'franka_panda': self.leftArmJointCommandSubscriber}

        self.robot_joint_states_pub = dict()
        self.robot_joint_command_sub = dict()

        self.joint_names = dict()
        self.joint_position = dict()
        self.joint_velocity = dict()
        self.joint_position_command = dict()
        self.joint_state_index = dict()

        # self.object_names = ['object0', 'wineBottle_z', 'cup_1', 'glass_z', 'largeshaker_z']

        self.joint_names['franka_panda'] = ['panda_joint1', 'panda_joint2', 'panda_joint3', 'panda_joint4', 'panda_joint5',
                                            'panda_joint6', 'panda_joint7']


        self.joint_state_index['franka_panda'] = [0, 1, 2, 3, 4, 5, 6]


        self.pub_joint_state_msg = dict()

        for robot_name in self.robot_list:
            self.robot_joint_states_pub[robot_name] = rospy.Publisher(robot_name + '/joint_states', JointState, queue_size=1000)
            self.robot_joint_command_sub[robot_name] = rospy.Subscriber(robot_name + '/controller', JointCommand, self.robot_cmd_sub_callback[robot_name])

            self.joint_position[robot_name] = self.getJointPosition(self.joint_names[robot_name])
            self.joint_velocity[robot_name] = self.getJointVelocity(self.joint_names[robot_name])
            self.joint_position_command[robot_name] = self.joint_position[robot_name]

            self.pub_joint_state_msg[robot_name] = JointState()
            self.pub_joint_state_msg[robot_name].position = self.joint_position[robot_name]
            self.pub_joint_state_msg[robot_name].velocity = self.joint_velocity[robot_name]
            self.pub_joint_state_msg[robot_name].acceleration = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].torque = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].current_torque = [0 for i in range(len(self.joint_position[robot_name]))]


        self._rate = rospy.Rate(100)

    def leftArmJointCommandSubscriber(self, msg):
        if (msg.mode == 1):
            self.joint_position_command['franka_panda'] = msg.command
            # self.setJointPosition(self.joint_names['franka_panda'], msg.command)

    def getJointPosition(self, names):
        pos = []
        for i in names:
           pos.append(self.env.get_joint_position(i))
        return pos

    def getJointVelocity(self, names):
        pos = []
        for i in names:
           pos.append(self.env.get_joint_velocity(i))
        return pos

    def setJointPosition(self, names, values):
        for i in range(len(names)):
           self.env.set_joint_position(names[i], list(values)[i])

    def pubJointStates(self):
        for robot_name in self.robot_list:
            self.pub_joint_state_msg[robot_name] = JointState()
            self.pub_joint_state_msg[robot_name].header.stamp = rospy.Time.now()
            self.pub_joint_state_msg[robot_name].position = self.getJointPosition(self.joint_names[robot_name]) #self.joint_position[robot_name]
            self.pub_joint_state_msg[robot_name].velocity = self.getJointVelocity(self.joint_names[robot_name]) #self.joint_velocity[robot_name]
            self.pub_joint_state_msg[robot_name].acceleration = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].torque = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].current_torque = [0 for i in range(len(self.joint_position[robot_name]))]
            self.robot_joint_states_pub[robot_name].publish(self.pub_joint_state_msg[robot_name])

    def rosPub(self):
        print("ros pub start")

        while not rospy.is_shutdown():
            # arm
            self.pubJointStates()
            # time.sleep(0.002)
            self._rate.sleep()

    def step(self):
        # self.env.reset()
        self.env.render()

        qpos = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])  # self.env.model.qpos0[7:]  [0 0 0 0 0 0 0 0 0 0 0 0]
        print(qpos.shape)
        qvel = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])  # np.zeros(self.env.model.nv-6,)
        print(qvel.shape)
        des = np.concatenate((qpos, qpos))
        print(des)
        nu = self.env.model.nu
        print(nu)

        t = 0
        start_time = time.time()

        qpos_init = deepcopy(self.env.data.qpos)
        print('qpos_init: ', qpos_init)

        print(self.env.get_body_pose('franka_panda'))


        while not rospy.is_shutdown():
            start_time = time.time()

            # print(self.env.get_joint_position_all())

            # print(self.joint_position_command[self.robot_list[0]])
            des = np.array(self.joint_position_command[self.robot_list[0]])

            self.env.do_simulation(des)

            self.env.render_show()


            self.pubJointStates()
            # self._rate.sleep()

            # print((time.time() - start_time) * 1000, 'ms')


        self.env.render_close()


def main():
    model_path = join(dirname(abspath(__file__)), 'franka_panda_platform/main_franka_panda.xml')  # scene_kuka_iiwa14_robotiq85 scene_kuka_iiwa14_hand scene_kuka_iiwa14_barrett
    sim = RobotSimulation(model_path)

    print('start job')
    sim.threadInit()
    print('end job')



if __name__ == "__main__":
    main()







