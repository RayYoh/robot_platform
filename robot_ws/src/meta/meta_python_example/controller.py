import numpy as np


class Controller:
    def __init__(self, fz_d, time_step, scale):
        self.fz_d = fz_d
        self.time_step = time_step
        self.m_z = 10.
        self.m_x = 0.5
        self.m_y = 0.25
        self.b_z = 2000.
        self.b_x = 10. * 1.5
        self.b_y = 2.5 * 3.
        self.scale = scale

    def admittance_control(self, f_z, t_x, t_y, v_z, w_x, w_y):
        ft_error = np.array([self.scale * (self.fz_d - f_z), t_x, t_y]).reshape(3, 1)
        m_matrix = np.array([[self.m_z, 0., 0.], [0., self.m_x, 0.], [0., 0., self.m_y]])
        b_matrix = np.array([[self.b_z, 0., 0.], [0., self.b_x, 0.], [0., 0., self.b_y]])
        vel = np.array([v_z, w_x, w_y]).reshape(3, 1)
        acc_ = np.matmul(np.linalg(m_matrix), ft_error - np.matmul(b_matrix, vel))
        vel_ = vel + acc_ * self.time_step
        return vel_.reshape(-1)