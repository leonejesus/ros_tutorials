// Generated by gencpp from file picture_server/image_cmdResponse.msg
// DO NOT EDIT!


#ifndef PICTURE_SERVER_MESSAGE_IMAGE_CMDRESPONSE_H
#define PICTURE_SERVER_MESSAGE_IMAGE_CMDRESPONSE_H


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
struct image_cmdResponse_
{
  typedef image_cmdResponse_<ContainerAllocator> Type;

  image_cmdResponse_()
    : result(0)  {
    }
  image_cmdResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::picture_server::image_cmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::picture_server::image_cmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct image_cmdResponse_

typedef ::picture_server::image_cmdResponse_<std::allocator<void> > image_cmdResponse;

typedef boost::shared_ptr< ::picture_server::image_cmdResponse > image_cmdResponsePtr;
typedef boost::shared_ptr< ::picture_server::image_cmdResponse const> image_cmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::picture_server::image_cmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::picture_server::image_cmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace picture_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::picture_server::image_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::picture_server::image_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::picture_server::image_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::picture_server::image_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::picture_server::image_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::picture_server::image_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::picture_server::image_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::picture_server::image_cmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::picture_server::image_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "picture_server/image_cmdResponse";
  }

  static const char* value(const ::picture_server::image_cmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::picture_server::image_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n\
\n\
";
  }

  static const char* value(const ::picture_server::image_cmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::picture_server::image_cmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct image_cmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::picture_server::image_cmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::picture_server::image_cmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PICTURE_SERVER_MESSAGE_IMAGE_CMDRESPONSE_H
