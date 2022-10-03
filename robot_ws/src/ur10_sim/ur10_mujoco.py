#!/usr/bin/env python3
import os
import rospy
import threading
import numpy as np
from copy import deepcopy
from robot_env import RobotEnv
from geometry_msgs.msg import Pose, WrenchStamped
from std_msgs.msg import String, Bool
from limb_core_msgs.msg import MarkerArray, EndpointStates, JointCommand, JointState


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
        rospy.init_node('ur10_platform')
        # self.env.sim.data.ctrl[:] = np.array([1.5707963, 0, 1.5707963, 0, -1.5707963, 0])
        initial_qpos = [1.5707963, 0, 1.5707963, 0, -1.5707963, 0]
        self.robot_list = ['ur10']
        self.robot_endpoint_cmd_sub_callback = {'ur10': self.robot_endpoint_command_subscriber}
        self.robot_joint_cmd_sub_callback = {'ur10': self.robot_joint_command_subscriber}

        self.joint_names = dict()
        self.joint_names['ur10'] = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint', 
                                    'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']

        for i in range(len(self.joint_names['ur10'])):
            self.env.set_joint_position(self.joint_names['ur10'][i], initial_qpos[i])

        self.robot_endpoint_command_sub = dict()
        self.robot_joint_command_sub = dict()
        self.joint_position_command = dict()
        self.robot_joint_states_pub = dict()
        self.joint_state_pub_msg = dict()
        self.force_sensor_pub = dict()

        self.joint_position = dict()
        self.joint_velocity = dict()

        self.pub_joint_state_msg = dict()

        for robot_name in self.robot_list:
            self.robot_joint_states_pub[robot_name] = rospy.Publisher(robot_name + '/joint_states', JointState,
                                                                      queue_size=1000)
            self.robot_joint_command_sub[robot_name] = rospy.Subscriber(robot_name + '/controller', JointCommand,
                                                                        self.robot_joint_cmd_sub_callback[robot_name])
            self.joint_position[robot_name] = self.get_joint_position(self.joint_names[robot_name])
            self.joint_velocity[robot_name] = self.get_joint_velocity(self.joint_names[robot_name])
            self.joint_position_command[robot_name] = self.joint_position[robot_name]

            self.pub_joint_state_msg[robot_name] = JointState()
            self.pub_joint_state_msg[robot_name].position = self.joint_position[robot_name]
            self.pub_joint_state_msg[robot_name].velocity = self.joint_velocity[robot_name]
            self.pub_joint_state_msg[robot_name].acceleration = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].torque = [0 for i in range(len(self.joint_position[robot_name]))]
            self.pub_joint_state_msg[robot_name].current_torque = [0 for i in
                                                                   range(len(self.joint_position[robot_name]))]
            self.robot_endpoint_command_sub[robot_name] = rospy.Subscriber(robot_name+'/robot_endpoint_command',
                                                                           EndpointStates,
                                                                           self.robot_endpoint_cmd_sub_callback[
                                                                               robot_name], queue_size=1)
            self.force_sensor_pub[robot_name] = rospy.Publisher(robot_name+'/contact_force', WrenchStamped,
                                                                queue_size=1)

        self._rate = rospy.Rate(250.0)

    def robot_endpoint_command_subscriber(self, msg):
        pose = [msg.states[0].pose.position.x, msg.states[0].pose.position.y,
                msg.states[0].pose.position.z,
                msg.states[0].pose.orientation.w, msg.states[0].pose.orientation.x, msg.states[0].pose.orientation.y,
                msg.states[0].pose.orientation.z]
        print(pose)

    def robot_joint_command_subscriber(self, msg):
        if(msg.mode == 1):
            self.joint_position_command['ur10'] = msg.command
            # self.set_joint_position(self.joint_names['ur10'], msg.commond)

    def get_joint_position(self, names):
        pos = []
        for i in names:
            pos.append(self.env.get_joint_position(i))
        return pos

    def get_joint_velocity(self, names):
        vel = []
        for i in names:
            vel.append(self.env.get_joint_velocity(i))
        return vel

    def set_joint_position(self, names, values):
        for i in range(len(names)):
            self.env.set_joint_position(names[i], list(values)[i])

    def pub_joint_states(self):
        robot_joint_torque = self.env.joint_force_in()
        robot_joint_acceleration = self.env.joint_acc()

        self.joint_state_pub_msg['ur10'] = JointState()
        self.joint_state_pub_msg['ur10'].header.stamp = rospy.Time.now()
        self.joint_state_pub_msg['ur10'].header.frame_id = 'sim'
        self.joint_state_pub_msg['ur10'].position = self.get_joint_position(self.joint_names['ur10'])
        self.joint_state_pub_msg['ur10'].velocity = self.get_joint_velocity(self.joint_names['ur10'])
        self.joint_state_pub_msg['ur10'].acceleration = robot_joint_acceleration
        self.joint_state_pub_msg['ur10'].torque = [robot_joint_torque[i] - self.joint_state_pub_msg['ur10'].velocity[i] * 25
                                                   for i in range(len(robot_joint_torque))]
        self.joint_state_pub_msg['ur10'].current_torque = [0 for i in range(len(robot_joint_torque))]
        self.robot_joint_states_pub['ur10'].publish(self.joint_state_pub_msg['ur10'])

    def ros_pub(self):
        print("ros pub start")
        self.env.render()
        rate = rospy.Rate(100.0)
        while not rospy.is_shutdown():
            self.pub_joint_states()
            self.env.render_show()
            rate.sleep()

    def step(self):
        qpos_init = deepcopy(self.env.data.qpos)
        print("qpos_init:", qpos_init)
        nu = self.env.model.nu
        print('Dof: ', nu)
        while not rospy.is_shutdown():
            des = np.array(self.joint_position_command['ur10'])
            # self.env.do_simulation()
            self.env.do_ctrl_simulation(des)
            self._rate.sleep()

        self.env.render_close()


def main():
    # Your terminal path should be: /path/to/ur10/
    MODEL_XML_PATH = os.path.abspath(os.path.join(os.getcwd(), "ur10_platform/ur10_robot_joint_ctrl.xml"))
    sim = RobotSimulation(MODEL_XML_PATH)

    print('start job')
    sim.thread_init()
    print('end job')


if __name__ == "__main__":
    main()