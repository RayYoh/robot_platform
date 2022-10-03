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
  JointCommand.msg
  JointState.msg
  JointStatus.msg
  MarkerArray.msg
  MarkerStringArray.msg
  TactileState.msg
  ContactState.msg
  ObjectTrajectory.msg
  Float64MultiArray.msg
  ObjectInfo.msg
  ShutdownReason.msg
)

add_service_files(DIRECTORY srv FILES
  GetObjectPose.srv
  GetObjectPoseWithImage.srv
  GetObjectTrajectory.srv
  GetTactileState.srv
  MetaService.srv
  GetObjectInfo.srv
  SetObjectInfo.srv
  ShutdownSystem.srv
  GetMinJerkTraj.srv
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
