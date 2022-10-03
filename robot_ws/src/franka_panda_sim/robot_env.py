import os

import mujoco_py
from mujoco_py import load_model_from_xml, MjSim, MjViewer, load_model_from_path

import math
import numpy as np
import time
import copy

class RobotEnv(object):
    def __init__(self, model_path, frame_skip=1):
        """
        if model_path.startswith("/"):
                fullpath = model_path
            else:
                fullpath = os.path.join(os.path.dirname(__file__), "assets", model_path)
            if not path.exists(fullpath):
                raise IOError("File %s does not exist" % fullpath)
        """
        self.frame_skip = frame_skip
        self.model = mujoco_py.load_model_from_path(model_path)
        self.sim = mujoco_py.MjSim(self.model)
        self.data = self.sim.data
        self.viewer = None

    def reset(self):
        self.sim.reset()
        self.sim.forward()

    def set_state(self, qpos, qvel):
        assert qpos.shape == (self.model.nq,) and qvel.shape == (self.model.nv,), "Wrong dimension"
        old_state = self.sim.get_state()
        new_state = mujoco_py.MjSimState(old_state.time, qpos, qvel,
                                         old_state.act, old_state.udd_state)
        self.sim.set_state(new_state)
        self.sim.forward()

    def dt(self):
        return self.model.opt.timestep * self.frame_skip

    def do_simulation(self, ctrl):
        assert ctrl.shape == (self.sim.model.nu,), "Wrong dimension"
        self.sim.data.ctrl[:] = ctrl
        for _ in range(self.frame_skip):
            self.sim.step()

    # def do_simulation(self):
    #     for _ in range(self.frame_skip):
    #         self.sim.step()

    def render(self):
        self.viewer = mujoco_py.MjViewer(self.sim)

    def render_show(self):
        if self.viewer is not None:
            self.viewer.render()

    def render_close(self):
        if self.viewer is not None:
            import glfw
            glfw.destroy_window(self.viewer.window)
            self.viewer = None

    def from_matrix(self, matrix):

        is_single = False
        matrix = np.asarray(matrix, dtype=float)

        if matrix.ndim not in [2, 3] or matrix.shape[-2:] != (3, 3):
            raise ValueError("Expected `matrix` to have shape (3, 3) or "
                             "(N, 3, 3), got {}".format(matrix.shape))

        # If a single matrix is given, convert it to 3D 1 x 3 x 3 matrix but
        # set _single to True so that we can return appropriate objects in
        # the `to_...` methods
        if matrix.shape == (3, 3):
            matrix = matrix.reshape((1, 3, 3))
            is_single = True

        num_rotations = matrix.shape[0]

        decision_matrix = np.empty((num_rotations, 4))
        decision_matrix[:, :3] = matrix.diagonal(axis1=1, axis2=2)
        decision_matrix[:, -1] = decision_matrix[:, :3].sum(axis=1)
        choices = decision_matrix.argmax(axis=1)

        quat = np.empty((num_rotations, 4))

        ind = np.nonzero(choices != 3)[0]
        i = choices[ind]
        j = (i + 1) % 3
        k = (j + 1) % 3

        quat[ind, i] = 1 - decision_matrix[ind, -1] + 2 * matrix[ind, i, i]
        quat[ind, j] = matrix[ind, j, i] + matrix[ind, i, j]
        quat[ind, k] = matrix[ind, k, i] + matrix[ind, i, k]
        quat[ind, 3] = matrix[ind, k, j] - matrix[ind, j, k]

        ind = np.nonzero(choices == 3)[0]
        quat[ind, 0] = matrix[ind, 2, 1] - matrix[ind, 1, 2]
        quat[ind, 1] = matrix[ind, 0, 2] - matrix[ind, 2, 0]
        quat[ind, 2] = matrix[ind, 1, 0] - matrix[ind, 0, 1]
        quat[ind, 3] = 1 + decision_matrix[ind, -1]

        quat /= np.linalg.norm(quat, axis=1)[:, None]


        quat_copy = copy.deepcopy(quat)
        quat_copy[0] = [quat[0][3], quat[0][0], quat[0][1], quat[0][2]]

        if is_single:
            return quat_copy[0]
            # return cls(quat[0], normalize=False, copy=False)
        else:
            # return cls(quat, normalize=False, copy=False)
            return quat

    def set_mocap_pose(self, name, pose):
        self.data.set_mocap_pos(name, pose[:3])
        self.data.set_mocap_quat(name, pose[3:])

    def get_site_pose(self, name):
        return np.hstack((self.data.get_site_xpos(name), self.from_matrix(self.data.get_site_xmat(name))))

    # Joint

    def set_joint_position(self, joint_name, value):
        assert joint_name in self.get_joint_name(),  "Name mistaken"
        return self.data.set_joint_qpos(joint_name, value)


    def get_joint_name(self):
        return self.model.joint_names

    def get_joint_position(self, joint_name):
        assert joint_name in self.get_joint_name(),  "Name mistaken"
        return self.data.get_joint_qpos(joint_name)

    def get_joint_velocity(self, joint_name):
        assert joint_name in self.get_joint_name(),  "Name mistaken"
        return self.data.get_joint_qvel(joint_name)

    def get_joint_position_all(self):
        return self.data.qpos.flat.copy()
    
    def get_joint_velocity_all(self):
        return self.data.qvel.flat.copy()
    
    # Body
    def get_body_name(self):
        return self.model.body_names
    
    def get_body_com_position(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.get_body_xipos(body_name)
    
    def get_body_com_orientation_mat(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.get_body_ximat(body_name)

    def get_body_com_velocity(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.cvel[self.get_body_name().index(body_name)]

    def get_body_com_position_all(self):
        return self.data.xipos

    def get_body_com_orientation_mat_all(self):
        return self.data.ximat

    def get_body_com_velocity_all(self):
        return self.data.cvel

    # Body frame
    def get_body_position(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.get_body_xpos(body_name)

    def get_body_orientation_mat(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.get_body_xmat(body_name)

    def get_body_orientation_quat(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        return self.data.get_body_xquat(body_name)

    def get_body_pose(self, body_name):
        assert body_name in self.get_body_name(), "Name mistaken"
        return np.hstack((self.get_body_position(body_name) , self.get_body_orientation_quat(body_name)))

    def get_body_velocity(self, body_name):
        assert body_name in self.get_body_name(),  "Name mistaken"
        velp = self.data.get_body_xvelp(body_name)
        velr = self.data.get_body_xvelr(body_name)
        return np.hstack((velp, velr))

    def get_body_position_all(self):
        return self.data.body_xpos

    def get_body_orientation_mat_all(self):
        return self.data.body_xmat

    def get_body_orientation_quat_all(self):
        return self.data.body_xquat

    def get_body_velocity_all(self):
        velp = self.data.body_xvelp
        velr = self.data.body_xvelr
        return np.hstack((velp, velr))

    # Site
    def get_site_name(self):
        return self.model.site_names

    def get_site_position(self, site_name):
        assert site_name in self.get_site_name(),  "Name mistaken"
        return self.data.get_site_xpos(site_name)

    def get_site_orientation_mat(self, site_name):
        assert site_name in self.get_site_name(),  "Name mistaken"
        return self.data.get_site_xmat(site_name)

    def get_site_velocity(self, site_name):
        assert site_name in self.get_site_name(),  "Name mistaken"
        velp = self.data.get_site_xvelp(site_name)
        velr = self.data.get_site_xvelr(site_name)
        return np.hstack((velp, velr))

    def get_site_position_all(self):
        return self.data.site_xpos

    def get_site_orientation_mat_all(self):
        return self.data.site_xmat

    def get_site_velocity_all(self):
        velp = self.data.site_xvelp
        velr = self.data.site_xvelr
        return np.hstack((velp, velr))
    
    # Force Sensor
    def joint_force_in(self):
        return self.data.actuator_force

    def joint_force_out(self):
        return self.data.qfrc_actuator

    def joint_acc(self):
        return self.data.qacc

    def body_cfrc_int(self):
        return self.data.cfrc_int

    def body_cfrc_ext(self):
        return self.data.cfrc_ext

    def body_acc(self):
        return self.data.cacc


