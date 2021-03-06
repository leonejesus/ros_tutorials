// Generated by gencpp from file motor_cam_tutorial/image_cmdRequest.msg
// DO NOT EDIT!


#ifndef MOTOR_CAM_TUTORIAL_MESSAGE_IMAGE_CMDREQUEST_H
#define MOTOR_CAM_TUTORIAL_MESSAGE_IMAGE_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motor_cam_tutorial
{
template <class ContainerAllocator>
struct image_cmdRequest_
{
  typedef image_cmdRequest_<ContainerAllocator> Type;

  image_cmdRequest_()
    : cmd(false)
    , path()
    , angle(0.0)  {
    }
  image_cmdRequest_(const ContainerAllocator& _alloc)
    : cmd(false)
    , path(_alloc)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_type;
  _cmd_type cmd;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;

   typedef float _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct image_cmdRequest_

typedef ::motor_cam_tutorial::image_cmdRequest_<std::allocator<void> > image_cmdRequest;

typedef boost::shared_ptr< ::motor_cam_tutorial::image_cmdRequest > image_cmdRequestPtr;
typedef boost::shared_ptr< ::motor_cam_tutorial::image_cmdRequest const> image_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace motor_cam_tutorial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'motor_cam_tutorial': ['/home/leone/catkin_ws/src/motor_cam_tutorial/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a5c6d881da01d42e5cd4e9422d3ad58";
  }

  static const char* value(const ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a5c6d881da01d42ULL;
  static const uint64_t static_value2 = 0xe5cd4e9422d3ad58ULL;
};

template<class ContainerAllocator>
struct DataType< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motor_cam_tutorial/image_cmdRequest";
  }

  static const char* value(const ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool cmd\n\
string path\n\
float32  angle\n\
";
  }

  static const char* value(const ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
      stream.next(m.path);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct image_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motor_cam_tutorial::image_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd);
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTOR_CAM_TUTORIAL_MESSAGE_IMAGE_CMDREQUEST_H
