// Copyright 2022 Tencent. All rights reserved.
#ifndef LIMB_CORE_MSGS_LIMB_CORE_MSGS_TO_STRING_H_
#define LIMB_CORE_MSGS_LIMB_CORE_MSGS_TO_STRING_H_

#include "limb_core_msgs/JointStatus.h"
#include "limb_core_msgs/ShutdownReason.h"

namespace limb_core_msgs {

const char* ToString(ShutdownReason reason);
const char* ToString(JointStatus status);
}  // namespace limb_core_msgs

#endif  // LIMB_CORE_MSGS_LIMB_CORE_MSGS_TO_STRING_H_
