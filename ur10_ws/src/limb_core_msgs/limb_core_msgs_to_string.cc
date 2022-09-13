// Copyright 2022 Tencent. All rights reserved.
#include "limb_core_msgs/limb_core_msgs_to_string.h"

namespace limb_core_msgs {

const char* ToString(ShutdownReason reason) {
  switch (reason.reason) {
    case ShutdownReason::kUndefined:
      return "Undefined";
    case ShutdownReason::kInterruptSignal:
      return "kInterruptSignal";
    case ShutdownReason::kCollisionDetection:
      return "CollisionDetection";
    case ShutdownReason::kRightArmNotExecuting:
      return "RightArmNotExecuting";
    case ShutdownReason::kLeftArmNotExecuting:
      return "LeftArmNotExecuting";
    case ShutdownReason::kRightWrenchOverThreshold:
      return "RightWrenchOverThreshold";
    case ShutdownReason::kLeftWrenchOverThreshold:
      return "LeftWrenchOverThreshold";
    default:
      return "Unknown";
  }
}

const char* ToString(JointStatus status) {
  switch (status.status) {
    case JointStatus::kExecuting:
      return "kExecuting";
    case JointStatus::kUnableSendCommand:
      return "kUnableSendCommand";
    case JointStatus::kStopSendCommand:
      return "kStopSendCommand";
    case JointStatus::kShutdown:
      return "kShutdown";
    default:
      return "Unknown";
  }
}
}  // namespace limb_core_msgs
