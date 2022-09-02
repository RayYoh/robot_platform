# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "limb_core_msgs: 10 messages, 4 services")

set(MSG_I_FLAGS "-Ilimb_core_msgs:/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(limb_core_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:limb_core_msgs/EndpointState:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" ""
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" "limb_core_msgs/Float64MultiArray:std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_custom_target(_limb_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "limb_core_msgs" "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" "limb_core_msgs/Float64MultiArray:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)

### Generating Services
_generate_srv_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_cpp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
)

### Generating Module File
_generate_module_cpp(limb_core_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(limb_core_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(limb_core_msgs_generate_messages limb_core_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_cpp _limb_core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(limb_core_msgs_gencpp)
add_dependencies(limb_core_msgs_gencpp limb_core_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS limb_core_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)

### Generating Services
_generate_srv_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_eus(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
)

### Generating Module File
_generate_module_eus(limb_core_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(limb_core_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(limb_core_msgs_generate_messages limb_core_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_eus _limb_core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(limb_core_msgs_geneus)
add_dependencies(limb_core_msgs_geneus limb_core_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS limb_core_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)

### Generating Services
_generate_srv_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_lisp(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
)

### Generating Module File
_generate_module_lisp(limb_core_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(limb_core_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(limb_core_msgs_generate_messages limb_core_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_lisp _limb_core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(limb_core_msgs_genlisp)
add_dependencies(limb_core_msgs_genlisp limb_core_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS limb_core_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)

### Generating Services
_generate_srv_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_nodejs(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
)

### Generating Module File
_generate_module_nodejs(limb_core_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(limb_core_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(limb_core_msgs_generate_messages limb_core_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_nodejs _limb_core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(limb_core_msgs_gennodejs)
add_dependencies(limb_core_msgs_gennodejs limb_core_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS limb_core_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_msg_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)

### Generating Services
_generate_srv_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)
_generate_srv_py(limb_core_msgs
  "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
)

### Generating Module File
_generate_module_py(limb_core_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(limb_core_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(limb_core_msgs_generate_messages limb_core_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg" NAME_WE)
add_dependencies(limb_core_msgs_generate_messages_py _limb_core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(limb_core_msgs_genpy)
add_dependencies(limb_core_msgs_genpy limb_core_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS limb_core_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/limb_core_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(limb_core_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(limb_core_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(limb_core_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/limb_core_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(limb_core_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(limb_core_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(limb_core_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/limb_core_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(limb_core_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(limb_core_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(limb_core_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/limb_core_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(limb_core_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(limb_core_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(limb_core_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/limb_core_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(limb_core_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(limb_core_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(limb_core_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
