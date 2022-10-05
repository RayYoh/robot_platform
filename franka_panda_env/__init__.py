from gym.envs.registration import register

register(
    id='PandaReach-v0',
    entry_point='franka_panda_env.envs:PandaReachEnv',
    max_episode_steps=50,
)