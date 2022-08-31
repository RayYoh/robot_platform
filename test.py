import os
from os.path import dirname, abspath, join
import gym
import ur10_mujoco_gym
from stable_baselines3 import PPO
from stable_baselines3.common.monitor import Monitor
from stable_baselines3.common.logger import configure

if __name__ == '__main__':
    logdir = dirname(abspath(__file__)) + '/tmp/UR10'
    os.makedirs(logdir, exist_ok=True)
    env = gym.make('UR10Reach-v0', reward_type='dense')
    # env = gym.make('FetchReach-v1', reward_type='dense')
    # set up logger
    new_logger = configure(logdir, ["stdout", "log", "tensorboard", "csv", "json"])
    env = Monitor(env, logdir, info_keywords=("is_success",))
    model = PPO('MultiInputPolicy', env, verbose=1)
    model.set_logger(new_logger)
    model.learn(total_timesteps=50_0000)
