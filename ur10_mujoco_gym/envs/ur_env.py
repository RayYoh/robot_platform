import numpy as np

from ..gym_robot_env import rotations, gym_robot_env, utils


def goal_distance(goal_a, goal_b):
    assert goal_a.shape == goal_b.shape
    return np.linalg.norm(goal_a - goal_b, axis=-1)


class UREnv(gym_robot_env.RobotEnv):
    def __init__(
            self,
            model_path,
            n_substeps,
            gripper_extra_height,
            has_object,
            target_in_the_air,
            target_offset,
            obj_range,
            target_range,
            distance_threshold,
            initial_qpos,
            reward_type,
    ):
        self.gripper_extra_height = gripper_extra_height
        self.has_object = has_object
        self.target_in_the_air = target_in_the_air
        self.target_offset = target_offset
        self.obj_range = obj_range
        self.target_range = target_range
        self.distance_threshold = distance_threshold
        self.reward_type = reward_type

        super(UREnv, self).__init__(
            model_path=model_path,
            n_substeps=n_substeps,
            n_actions=3,
            initial_qpos=initial_qpos,
        )

    # GoalEnv methods
    # ----------------------------

    def compute_reward(self, achieved_goal, goal, info):
        # Compute distance between goal and the achieved goal.
        d = goal_distance(achieved_goal, goal)
        if self.reward_type == "sparse":
            return -(d > self.distance_threshold).astype(np.float32)
        else:
            return -d

    # RobotEnv methods
    # ----------------------------

    def _set_action(self, action):
        assert action.shape == (3,)
        action = (
            action.copy()
        )  # ensure that we don't change the action outside of this scope
        pos_ctrl = action[:3]

        pos_ctrl *= 0.05  # limit maximum change in position
        rot_ctrl = [
            0.0,
            0.0,
            0.0,
            0.0,
        ]  # fixed rotation of the end effector, expressed as a quaternion
        action = np.concatenate([pos_ctrl, rot_ctrl])

        # Apply action to simulation.
        utils.ctrl_set_action(self.sim, action)
        utils.mocap_set_action(self.sim, action)

    def _get_obs(self):
        # positions
        robot_end_pos = self.sim.data.get_site_xpos("robot_end")
        dt = self.sim.nsubsteps * self.sim.model.opt.timestep
        robot_end_velp = self.sim.data.get_site_xvelp("robot_end") * dt
        if self.has_object:
            object_pos = self.sim.data.get_site_xpos("object")
            # rotations
            object_rot = rotations.mat2euler(self.sim.data.get_site_xmat("object"))
            # velocities
            object_velp = self.sim.data.get_site_xvelp("object") * dt
            object_velr = self.sim.data.get_site_xvelr("object") * dt
            # gripper state
            object_rel_pos = object_pos - robot_end_pos  # end_pose
            object_velp -= robot_end_velp
        else:
            object_pos = (
                object_rot
            ) = object_velp = object_velr = object_rel_pos = np.zeros(0)

        if not self.has_object:
            achieved_goal = robot_end_pos.copy()
        else:
            achieved_goal = np.squeeze(object_pos.copy())
        obs = np.concatenate(
            [
                robot_end_pos,
                object_pos.ravel(),
                object_rel_pos.ravel(),
                object_rot.ravel(),
                object_velp.ravel(),
                object_velr.ravel(),
                robot_end_velp,
            ]
        )

        return {
            "observation": obs.copy(),
            "achieved_goal": achieved_goal.copy(),
            "desired_goal": self.goal.copy(),
        }

    def _reset_sim(self):
        self.sim.set_state(self.initial_state)

        # Randomize start position of object.
        if self.has_object:
            object_xpos = self.initial_robot_end_xpos[:2]
            while np.linalg.norm(object_xpos - self.initial_robot_end_xpos[:2]) < 0.1:
                object_xpos = self.initial_robot_end_xpos[:2] + self.np_random.uniform(
                    -self.obj_range, self.obj_range, size=2
                )
            object_qpos = self.sim.data.get_joint_qpos("object0:joint")
            assert object_qpos.shape == (7,)
            object_qpos[:2] = object_xpos
            self.sim.data.set_joint_qpos("object0:joint", object_qpos)

        self.sim.forward()
        return True

    def _sample_goal(self):
        if self.has_object:
            goal = self.initial_robot_end_xpos[:3] + self.np_random.uniform(
                -self.target_range, self.target_range, size=3
            )
            goal += self.target_offset
            goal[2] = self.height_offset
            if self.target_in_the_air and self.np_random.uniform() < 0.5:
                goal[2] += self.np_random.uniform(0, 0.45)
        else:
            goal = self.initial_robot_end_xpos[:3] + self.np_random.uniform(
                -self.target_range, self.target_range, size=3
            )
        return goal.copy()

    def _is_success(self, achieved_goal, desired_goal):
        d = goal_distance(achieved_goal, desired_goal)
        return (d < self.distance_threshold).astype(np.float32)

    def _env_setup(self, initial_qpos):
        for name, value in initial_qpos.items():
            self.sim.data.set_joint_qpos(name, value)
        utils.reset_mocap_welds(self.sim)
        self.sim.forward()

        # Move mocap into position and orientation
        robot_end_pose = self.sim.data.get_site_xpos("robot_end")
        # fix the orientation
        robot_end_quat = np.array([0.70711, -0.70711, 0.0, 0.0])
        self.sim.data.set_mocap_pos("robot_end_mocap", robot_end_pose)
        self.sim.data.set_mocap_quat("robot_end_mocap", robot_end_quat)
        # move robot_end to the robot_end_mocap
        for _ in range(10):
            self.sim.step()

        # Extract information for sampling goals.
        self.initial_robot_end_xpos = self.sim.data.get_site_xpos("robot_end").copy()
        if self.has_object:
            self.height_offset = self.sim.data.get_site_xpos("object0")[2]

    def render(self, mode="human", width=500, height=500):
        return super(UREnv, self).render(mode, width, height)