import os
import numpy as np
from os.path import dirname, abspath
import gym
import ur10_env
import franka_panda_env
from stable_baselines3 import PPO
from stable_baselines3.common.monitor import Monitor
from stable_baselines3.common.logger import configure


def test_env():
    env = gym.make('UR10Reach-v0', reward_type='dense')
    # env = gym.make('FetchReach-v1', reward_type='dense')
    # env = gym.make('PandaReach-v0', reward_type='dense')
    print(env.action_space)
    print(env.observation_space)
    env.reset()
    done = False
    for _ in range(10):
        while not done:
            action = env.action_space.sample()
            obs, reward, done, info = env.step(action)
            env.render()
        env.reset()
        done = False


def train(expID):
    logdir = dirname(abspath(__file__)) + f'/tmp/UR10_0{expID}'
    os.makedirs(logdir, exist_ok=True)
    env = gym.make('UR10Reach-v0', reward_type='dense')
    # env = gym.make('FetchReach-v1', reward_type='dense')
    # set up logger
    new_logger = configure(logdir, ["stdout", "log", "tensorboard", "csv", "json"])
    env = Monitor(env, logdir, info_keywords=("is_success",))
    model = PPO('MultiInputPolicy', env, verbose=1)
    model.set_logger(new_logger)
    model.learn(total_timesteps=50_0000)
    model.save(logdir+'/model_file')
    model.policy.save(logdir+'/policy_file')


def enjoy():
    num_episodes = 10
    save_path = dirname(abspath(__file__)) + '/tmp/UR10_02/model_file'
    env = gym.make('UR10Reach-v0', reward_type='dense')
    model = PPO.load(save_path, env)

    episode_rewards, episode_lengths = [], []
    for _ in range(num_episodes):
        obs = env.reset()
        print(env.goal)
        done = False
        episode_reward, episode_length = 0.0, 0
        while not done:
            action, _ = model.predict(obs, deterministic=True)
            obs, reward, done, info = env.step(action)
            env.render()
            episode_reward += reward
            episode_length += 1
        episode_rewards.append(episode_reward)
        episode_lengths.append(episode_length)
        print(
            f"Episode {len(episode_rewards)} reward={episode_reward}, length={episode_length}"
        )
    mean_reward = np.mean(episode_rewards)
    std_reward = np.std(episode_rewards)

    mean_len, std_len = np.mean(episode_lengths), np.std(episode_lengths)

    print("==== Results ====")
    print(f"Episode_reward={mean_reward:.2f} +/- {std_reward:.2f}")
    print(f"Episode_length={mean_len:.2f} +/- {std_len:.2f}")



if __name__ == '__main__':
    # for i in range(3):
    #     train(i+1)
    # train()
    test_env()
    # enjoy()
