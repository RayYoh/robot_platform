# Install script for directory: /home/raylyao/ur10/ur10_ws/src/limb_core_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/raylyao/ur10/ur10_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs/msg" TYPE FILE FILES
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointState.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/EndpointStates.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/Float64MultiArray.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointCommand.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/JointState.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerArray.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/MarkerStringArray.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/TactileState.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ObjectTrajectory.msg"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/msg/ContactState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs/srv" TYPE FILE FILES
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectPose.srv"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/MetaService.srv"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetObjectTrajectory.srv"
    "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/srv/GetTactileState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs/cmake" TYPE FILE FILES "/home/raylyao/ur10/ur10_ws/build/limb_core_msgs/catkin_generated/installspace/limb_core_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/raylyao/ur10/ur10_ws/devel/include/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/raylyao/ur10/ur10_ws/devel/share/roseus/ros/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/raylyao/ur10/ur10_ws/devel/share/common-lisp/ros/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/raylyao/ur10/ur10_ws/devel/share/gennodejs/ros/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/raylyao/ur10/ur10_ws/devel/lib/python2.7/dist-packages/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/raylyao/ur10/ur10_ws/devel/lib/python2.7/dist-packages/limb_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/raylyao/ur10/ur10_ws/build/limb_core_msgs/catkin_generated/installspace/limb_core_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs/cmake" TYPE FILE FILES "/home/raylyao/ur10/ur10_ws/build/limb_core_msgs/catkin_generated/installspace/limb_core_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs/cmake" TYPE FILE FILES
    "/home/raylyao/ur10/ur10_ws/build/limb_core_msgs/catkin_generated/installspace/limb_core_msgsConfig.cmake"
    "/home/raylyao/ur10/ur10_ws/build/limb_core_msgs/catkin_generated/installspace/limb_core_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/limb_core_msgs" TYPE FILE FILES "/home/raylyao/ur10/ur10_ws/src/limb_core_msgs/package.xml")
endif()

