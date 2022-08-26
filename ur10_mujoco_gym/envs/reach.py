import os
from gym import utils
from ur10_mujoco_gym.envs import ur_env
# Ensure we get the path separator correct on windows
MODEL_XML_PATH = '/home/raylyao/ur10/ur10_sim/ur10_robot_ee_ctrl.xml'


class URReachEnv(ur_env.UREnv, utils.EzPickle):
    def __init__(self, reward_type="sparse"):
        initial_qpos = {
            "shoulder_pan_joint": 1.5707963,
            "shoulder_lift_joint": 0.0,
            "elbow_joint": 1.5707963,
            "wrist_1_joint": 0,
            "wrist_2_joint": -1.5707963,
            "wrist_3_joint": 0,
        }
        ur_env.UREnv.__init__(
            self,
            MODEL_XML_PATH,
            has_object=False,
            n_substeps=20,
            gripper_extra_height=0.2,
            target_in_the_air=True,
            target_offset=0.0,
            obj_range=0.15,
            target_range=0.15,
            distance_threshold=0.05,
            initial_qpos=initial_qpos,
            reward_type=reward_type,
        )
        utils.EzPickle.__init__(self, reward_type=reward_type)
