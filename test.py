import gym
import ur10_mujoco_gym

if __name__ == '__main__':
    env = gym.make('UR10Reach-v0')
    print(env.observation_space)
    print(env.action_space)
    print(env.reset())
    action = env.action_space.sample()
    for i in range(1000):
        action = env.action_space.sample()
        obs, _, _, info = env.step(action)
        env.render()