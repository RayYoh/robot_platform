import gym
import ur10_mujoco_gym

if __name__ == '__main__':
    env = gym.make('UR10Reach-v0')
    # env = gym.make('FetchReach-v1')
    print(env.action_space)
    print(env.reset())
    action = env.action_space.sample()
    for _ in range(1000):
        action = env.action_space.sample()
        print(env.sim.data.get_body_xquat("robot_end"))
        obs, _, _, info = env.step(action)
        env.render()