import rospy
import rospkg
import numpy as np
from limb_py_utils import register_roscpp_node, create_limb_object

rospy.init_node('limb_test', anonymous=True)


def main():
    '''
    Tests limb_py
    '''
    rospack = rospkg.RosPack()
    register_roscpp_node('limb_py_test')
    limb_list = {}

    manipulation_path = rospack.get_path('limb_config')
    limb_list['irb1100_left'] = create_limb_object(
        manipulation_path, 'abb/irb1100_left.yaml')
    limb_list['irb1100_right'] = create_limb_object(
        manipulation_path, '/limb_demo/config/abb/irb1100_right.yaml')

    # Example test value
    start_pos = np.array([0.4, -0.2, 0.1, -0.5, -0.5, -0.5, 0.5])
    pos_array = start_pos
    current_step_duration = 0.34
    current_step_time_slap = 5e-5
    start_vel = np.array([0.0, 0.0, 0.0])
    vel_array = start_vel
    limb_list['irb1100_left']._planning.cartesianSpacePlanning(
        start_pos, pos_array, current_step_duration, current_step_time_slap, start_vel, vel_array)


if __name__ == '__main__':
    main()
