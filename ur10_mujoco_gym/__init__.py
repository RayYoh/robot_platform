from gym.envs.registration import register

register(
    id='UR10Reach-v0',
    entry_point='ur10_mujoco_gym.envs:URReachEnv',
    # max_episode_steps=50,
)