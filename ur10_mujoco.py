#!/usr/bin/env python3
import math
import rospy
import threading
import numpy as np
from copy import deepcopy
from robot_env import RobotEnv
from geometry_msgs.msg import Pose
from std_msgs.msg import String, Bool
from os.path import dirname, join, abspath
from limb_core_msgs.msg import MarkerArray, EndpointStates, ObjectTrajectory


class RobotSimulation(object):
    def __init__(self, model_path):
        self.env = RobotEnv(model_path)
        self.ros_init()

    def thread_init(self):
        threads = []
        t1 = threading.Thread(target=self.ros_pub)
        threads.append(t1)
        t2 = threading.Thread(target=self.step)
        threads.append(t2)

        t1.start()
        t2.start()
        t1.join()
        t2.join()

    def ros_init(self):
        rospy.init_node('ur10_sim')
        self.robot_list = ['ur10']
        self.endpoint_cmd_sub_callback = dict()
        self.endpoint_cmd_sub_callback['ur10'] = self.endpoint_command_subscriber

        self.robot_endpoint_command_sub = dict()
        self.robot_endpoint_command_sub['ur10'] = rospy.Subscriber('/remote_control/endpoint_command',
                                                                   EndpointStates,
                                                                   self.endpoint_cmd_sub_callback[
                                                                       'ur10'], queue_size=1)
        self._rate = rospy.Rate(250.0)

    def endpoint_command_subscriber(self, msg):
        pose = [msg.states[0].pose.position.x, msg.states[0].pose.position.y,
                msg.states[0].pose.position.z,
                msg.states[0].pose.orientation.w, msg.states[0].pose.orientation.x, msg.states[0].pose.orientation.y,
                msg.states[0].pose.orientation.z]
        print(pose)

    def ros_pub(self):
        print("ros pub start")
        self.env.render()
        rate = rospy.Rate(100.0)
        while not rospy.is_shutdown():
            self.env.render_show()
            rate.sleep()

    def step(self):
        qpos_init = deepcopy(self.env.data.qpos)
        print("qpos_init:", qpos_init)
        nu = self.env.model.nu
        print('nu: ', nu)
        while not rospy.is_shutdown():
            self.env.do_simulation()
            self._rate.sleep()

        self.env.render_close()


def main():
    model_path = join(dirname(abspath(__file__)), 'ur10_sim/ur10_robot.xml')
    sim = RobotSimulation(model_path)

    print('start job')
    sim.thread_init()
    print('end job')


if __name__ == "__main__":
    main()