#!/usr/bin/env python3
import rospy
from moveit_ros_planning_interface._moveit_roscpp_initializer import roscpp_init, roscpp_shutdown
from limb_py import limb as limb_lib


def on_rospy_shutdown():
    # Shutdowns roscpp node upon closing rospy.
    roscpp_shutdown()


def register_roscpp_node(name):
    """
    Starts and shutdowns ROS node for C++ class (e.g. Limb) in Python main process.
    Note that only ROS distribution after melodic is supported with Python 3 version.
    """
    # Initializes roscpp node for C++ object.
    roscpp_init(name, [])
    rospy.on_shutdown(on_rospy_shutdown)


def initialize_limb(limb_object):
    """
    Initializes Limb object after receiving ROS message indicating joint is executing.
    """
    while not rospy.is_shutdown():
        if limb_object.IsJointExecuting():
            limb_object.Init()
            break
        rospy.logwarn("Waiting for interface of " + limb_object._config.getLimbName() + " to be connected")
        rospy.Rate(1.0).sleep()


def create_limb_object(root_path, config_file_path):
    """
    Creates Limb object and waits for receiving first joint states messages.
    `root_path`: absolute path of the project or ROS package
    `config_file_path`: path of .yaml configuration file relative to the `root_path`
    """
    limb_object = limb_lib.Limb.Create(root_path, config_file_path, wait_for_first_states_msg=False)
    initialize_limb(limb_object)

    return limb_object


def create_limb_list(limb_list_config_file_path):
    """
    `limb_list_config_file_path`: path of configuration file relative to the project directory to
    create LimbList object.
    """
    limb_list = limb_lib.LimbList(limb_list_config_file_path, wait_for_first_states_msg=False)
    limb_iter = limb_list.begin()
    while limb_iter != limb_list.end() and not rospy.is_shutdown():
        initialize_limb(limb_iter.value()[1])
        limb_iter += 1
    return limb_list


def create_limb_list_from_rosparams():
    """
    Reads configuration file for creating LimbList object from ROS parameter server to create the limb list.
    """
    param_name = '/limb_list_config_file_path'
    assert rospy.has_param(param_name), 'Unable to find limb_list_config_file_path in ROS parameter server'
    limb_list_config_file_path = rospy.get_param(param_name)

    return create_limb_list(limb_list_config_file_path)
