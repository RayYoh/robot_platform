// Generated by gencpp from file limb_core_msgs/JointState.msg
// DO NOT EDIT!


#ifndef LIMB_CORE_MSGS_MESSAGE_JOINTSTATE_H
#define LIMB_CORE_MSGS_MESSAGE_JOINTSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace limb_core_msgs
{
template <class ContainerAllocator>
struct JointState_
{
  typedef JointState_<ContainerAllocator> Type;

  JointState_()
    : header()
    , mode(0)
    , state()
    , name()
    , position()
    , velocity()
    , acceleration()
    , torque()
    , current_torque()  {
    }
  JointState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(0)
    , state(_alloc)
    , name(_alloc)
    , position(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)
    , torque(_alloc)
    , current_torque(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _mode_type;
  _mode_type mode;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _position_type;
  _position_type position;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _velocity_type;
  _velocity_type velocity;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _acceleration_type;
  _acceleration_type acceleration;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _torque_type;
  _torque_type torque;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _current_torque_type;
  _current_torque_type current_torque;





  typedef boost::shared_ptr< ::limb_core_msgs::JointState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::limb_core_msgs::JointState_<ContainerAllocator> const> ConstPtr;

}; // struct JointState_

typedef ::limb_core_msgs::JointState_<std::allocator<void> > JointState;

typedef boost::shared_ptr< ::limb_core_msgs::JointState > JointStatePtr;
typedef boost::shared_ptr< ::limb_core_msgs::JointState const> JointStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::limb_core_msgs::JointState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::limb_core_msgs::JointState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::limb_core_msgs::JointState_<ContainerAllocator1> & lhs, const ::limb_core_msgs::JointState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mode == rhs.mode &&
    lhs.state == rhs.state &&
    lhs.name == rhs.name &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration &&
    lhs.torque == rhs.torque &&
    lhs.current_torque == rhs.current_torque;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::limb_core_msgs::JointState_<ContainerAllocator1> & lhs, const ::limb_core_msgs::JointState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace limb_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::limb_core_msgs::JointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::limb_core_msgs::JointState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::limb_core_msgs::JointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::limb_core_msgs::JointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::limb_core_msgs::JointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::limb_core_msgs::JointState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::limb_core_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "201a2cd9ebbc01673c91f4773d09ea60";
  }

  static const char* value(const ::limb_core_msgs::JointState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x201a2cd9ebbc0167ULL;
  static const uint64_t static_value2 = 0x3c91f4773d09ea60ULL;
};

template<class ContainerAllocator>
struct DataType< ::limb_core_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "limb_core_msgs/JointState";
  }

  static const char* value(const ::limb_core_msgs::JointState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::limb_core_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# for arm: joint control\n"
"# POSITION_MODE=1\n"
"# VELOCITY_MODE=2\n"
"# TORQUE_MODE=3\n"
"# CURRENT_TORQUE_MODE=4\n"
"\n"
"# for effector: joint control /\n"
"              # limit position/velocity/force set /\n"
"              # basic\n"
"# LIMIT_SET_POSITION_MODE=11\n"
"# LIMIT_SET_VELOCITY_MODE=12\n"
"# LIMIT_SET_FORCE_MODE=13\n"
"# BASIC_MODE=21\n"
"# PINCH_MODE=22\n"
"# WIDE_MODE=23\n"
"# SCISSOR_MODE=24\n"
"\n"
"int32 mode # joint/basic\n"
"\n"
"# for arm: reset ready moving holding error\n"
"# for effector: reset ready moving gripping error\n"
"string state\n"
"\n"
"\n"
"# for effector: 0~1\n"
"string[] name\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] acceleration\n"
"float64[] torque\n"
"float64[] current_torque\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::limb_core_msgs::JointState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::limb_core_msgs::JointState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.state);
      stream.next(m.name);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.acceleration);
      stream.next(m.torque);
      stream.next(m.current_torque);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::limb_core_msgs::JointState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::limb_core_msgs::JointState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "acceleration[]" << std::endl;
    for (size_t i = 0; i < v.acceleration.size(); ++i)
    {
      s << indent << "  acceleration[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.acceleration[i]);
    }
    s << indent << "torque[]" << std::endl;
    for (size_t i = 0; i < v.torque.size(); ++i)
    {
      s << indent << "  torque[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.torque[i]);
    }
    s << indent << "current_torque[]" << std::endl;
    for (size_t i = 0; i < v.current_torque.size(); ++i)
    {
      s << indent << "  current_torque[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.current_torque[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIMB_CORE_MSGS_MESSAGE_JOINTSTATE_H
