cmake_minimum_required(VERSION 2.8.3)
project(limb_core_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs
  sensor_msgs
  std_msgs
)

add_message_files(DIRECTORY msg FILES
  EndpointState.msg
  EndpointStates.msg
  Float64MultiArray.msg
  JointCommand.msg
  JointState.msg
  MarkerArray.msg
  MarkerStringArray.msg
  TactileState.msg
  ObjectTrajectory.msg
  ContactState.msg
)

add_service_files(DIRECTORY srv FILES
  GetObjectPose.srv
  MetaService.srv
  GetObjectTrajectory.srv
  GetTactileState.srv
)

generate_messages(DEPENDENCIES
  geometry_msgs
  sensor_msgs
  std_msgs
)

catkin_package(CATKIN_DEPENDS
  message_runtime
  geometry_msgs
  sensor_msgs
  std_msgs
)
