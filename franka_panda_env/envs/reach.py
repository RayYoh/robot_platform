import os
from gym import utils
from franka_panda_env.envs import panda_env
MODEL_XML_PATH = os.path.abspath(os.path.join(os.getcwd(), "franka_panda_platform/panda_ee_ctrl.xml"))


class PandaReachEnv(panda_env.PandaEnv, utils.EzPickle):
    def __init__(self, reward_type="sparse"):
        initial_qpos = {
            "panda_joint1": 0,
            "panda_joint2": 0.0,
            "panda_joint3": 0,
            "panda_joint4": -1.5707963,
            "panda_joint5": 0,
            "panda_joint6": 1.5707963,
            "panda_joint7": 0.7853
        }
        panda_env.PandaEnv.__init__(
            self,
            MODEL_XML_PATH,
            has_object=False,
            frame_skip=1,
            end_extra_height=0.09,
            target_in_the_air=True,
            target_offset=0.0,
            obj_range=0.15,
            target_range=0.15,
            distance_threshold=0.05,
            initial_qpos=initial_qpos,
            reward_type=reward_type,
        )
        utils.EzPickle.__init__(self, reward_type=reward_type)
