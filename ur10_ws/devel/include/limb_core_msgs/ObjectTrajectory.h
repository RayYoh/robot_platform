// Generated by gencpp from file limb_core_msgs/ObjectTrajectory.msg
// DO NOT EDIT!


#ifndef LIMB_CORE_MSGS_MESSAGE_OBJECTTRAJECTORY_H
#define LIMB_CORE_MSGS_MESSAGE_OBJECTTRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <limb_core_msgs/Float64MultiArray.h>

namespace limb_core_msgs
{
template <class ContainerAllocator>
struct ObjectTrajectory_
{
  typedef ObjectTrajectory_<ContainerAllocator> Type;

  ObjectTrajectory_()
    : id()
    , pose()
    , time_stamps()
    , trajectory()  {
    }
  ObjectTrajectory_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , pose(_alloc)
    , time_stamps(_alloc)
    , trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _pose_type;
  _pose_type pose;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _time_stamps_type;
  _time_stamps_type time_stamps;

   typedef std::vector< ::limb_core_msgs::Float64MultiArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::limb_core_msgs::Float64MultiArray_<ContainerAllocator> >::other >  _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectTrajectory_

typedef ::limb_core_msgs::ObjectTrajectory_<std::allocator<void> > ObjectTrajectory;

typedef boost::shared_ptr< ::limb_core_msgs::ObjectTrajectory > ObjectTrajectoryPtr;
typedef boost::shared_ptr< ::limb_core_msgs::ObjectTrajectory const> ObjectTrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator1> & lhs, const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.pose == rhs.pose &&
    lhs.time_stamps == rhs.time_stamps &&
    lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator1> & lhs, const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace limb_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d26b33c46457cd48a88db617205b69de";
  }

  static const char* value(const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd26b33c46457cd48ULL;
  static const uint64_t static_value2 = 0xa88db617205b69deULL;
};

template<class ContainerAllocator>
struct DataType< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "limb_core_msgs/ObjectTrajectory";
  }

  static const char* value(const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"geometry_msgs/PoseStamped[] pose\n"
"\n"
"float64[] time_stamps\n"
"\n"
"limb_core_msgs/Float64MultiArray[] trajectory\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: limb_core_msgs/Float64MultiArray\n"
"Header header\n"
"float64[] data\n"
;
  }

  static const char* value(const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.pose);
      stream.next(m.time_stamps);
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectTrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::limb_core_msgs::ObjectTrajectory_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "pose[]" << std::endl;
    for (size_t i = 0; i < v.pose.size(); ++i)
    {
      s << indent << "  pose[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.pose[i]);
    }
    s << indent << "time_stamps[]" << std::endl;
    for (size_t i = 0; i < v.time_stamps.size(); ++i)
    {
      s << indent << "  time_stamps[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.time_stamps[i]);
    }
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::limb_core_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIMB_CORE_MSGS_MESSAGE_OBJECTTRAJECTORY_H
