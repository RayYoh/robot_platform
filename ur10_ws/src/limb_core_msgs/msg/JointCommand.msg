Header header

#// for arm/effector
#  POSITION = 1,
#  VELOCITY,
#  TORQUE,
#  CURRENTTORQUE,
#  TRAJECTORY,

#// for effector
#  LIMIT_SET_POSITION_MODE = 11,
#  LIMIT_SET_VELOCITY_MODE,
#  LIMIT_SET_FORCE_MODE,

#// for effector
#  RESET_MODE = 20,
#  BASIC_MODE,
#  PINCH_MODE,
#  WIDE_MODE,
#  SCISSOR_MODE,

#// for effector
#  OPEN_MODE = 30,
#  CLOSE_MODE


int32 mode

string[]  name

# for arm: position/velocity/torque/current_torque
# for effector: position/velocity/force  open/close(0~1, )
float64[] command



