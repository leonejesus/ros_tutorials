// Generated by gencpp from file picture_server/image_cmdRequest.msg
// DO NOT EDIT!


#ifndef PICTURE_SERVER_MESSAGE_IMAGE_CMDREQUEST_H
#define PICTURE_SERVER_MESSAGE_IMAGE_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace picture_server
{
template <class ContainerAllocator>
struct image_cmdRequest_
{
  typedef image_cmdRequest_<ContainerAllocator> Type;

  image_cmdRequest_()
    : cmd(false)
    , path()
    , num_name()  {
    }
  image_cmdRequest_(const ContainerAllocator& _alloc)
    : cmd(false)
    , path(_alloc)
    , num_name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_type;
  _cmd_type cmd;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _num_name_type;
  _num_name_type num_name;





  typedef boost::shared_ptr< ::picture_server::image_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::picture_server::image_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct image_cmdRequest_

typedef ::picture_server::image_cmdRequest_<std::allocator<void> > image_cmdRequest;

typedef boost::shared_ptr< ::picture_server::image_cmdRequest > image_cmdRequestPtr;
typedef boost::shared_ptr< ::picture_server::image_cmdRequest const> image_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::picture_server::image_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::picture_server::image_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace picture_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::picture_server::image_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::picture_server::image_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::picture_server::image_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::picture_server::image_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::picture_server::image_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::picture_server::image_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::picture_server::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "335e71059f4f035867a6dc235e0bfb5b";
  }

  static const char* value(const ::picture_server::image_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x335e71059f4f0358ULL;
  static const uint64_t static_value2 = 0x67a6dc235e0bfb5bULL;
};

template<class ContainerAllocator>
struct DataType< ::picture_server::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "picture_server/image_cmdRequest";
  }

  static const char* value(const ::picture_server::image_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::picture_server::image_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool cmd\n\
string path\n\
string num_name\n\
";
  }

  static const char* value(const ::picture_server::image_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::picture_server::image_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
      stream.next(m.path);
      stream.next(m.num_name);
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
struct Printer< ::picture_server::image_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::picture_server::image_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd);
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
    s << indent << "num_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.num_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PICTURE_SERVER_MESSAGE_IMAGE_CMDREQUEST_H