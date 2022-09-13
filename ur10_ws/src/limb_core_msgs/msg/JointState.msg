Header header

# for arm: joint control
# POSITION_MODE=1
# VELOCITY_MODE=2
# TORQUE_MODE=3
# CURRENT_TORQUE_MODE=4

# for effector: joint control /
              # limit position/velocity/force set /
              # basic
# LIMIT_SET_POSITION_MODE=11
# LIMIT_SET_VELOCITY_MODE=12
# LIMIT_SET_FORCE_MODE=13
# BASIC_MODE=21
# PINCH_MODE=22
# WIDE_MODE=23
# SCISSOR_MODE=24

int32 mode # joint/basic

# for arm: reset ready moving holding error
# for effector: reset ready moving gripping error
string state

# Default status is `kRunning`.
limb_core_msgs/JointStatus status

# for effector: 0~1
string[] name
float64[] position
float64[] velocity
float64[] acceleration
float64[] torque
float64[] current_torque
