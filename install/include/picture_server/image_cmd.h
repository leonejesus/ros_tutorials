// Generated by gencpp from file picture_server/image_cmd.msg
// DO NOT EDIT!


#ifndef PICTURE_SERVER_MESSAGE_IMAGE_CMD_H
#define PICTURE_SERVER_MESSAGE_IMAGE_CMD_H

#include <ros/service_traits.h>


#include <picture_server/image_cmdRequest.h>
#include <picture_server/image_cmdResponse.h>


namespace picture_server
{

struct image_cmd
{

typedef image_cmdRequest Request;
typedef image_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct image_cmd
} // namespace picture_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::picture_server::image_cmd > {
  static const char* value()
  {
    return "df4c5dd78fc80b838f57d02309153014";
  }

  static const char* value(const ::picture_server::image_cmd&) { return value(); }
};

template<>
struct DataType< ::picture_server::image_cmd > {
  static const char* value()
  {
    return "picture_server/image_cmd";
  }

  static const char* value(const ::picture_server::image_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::picture_server::image_cmdRequest> should match 
// service_traits::MD5Sum< ::picture_server::image_cmd > 
template<>
struct MD5Sum< ::picture_server::image_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::picture_server::image_cmd >::value();
  }
  static const char* value(const ::picture_server::image_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::picture_server::image_cmdRequest> should match 
// service_traits::DataType< ::picture_server::image_cmd > 
template<>
struct DataType< ::picture_server::image_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::picture_server::image_cmd >::value();
  }
  static const char* value(const ::picture_server::image_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::picture_server::image_cmdResponse> should match 
// service_traits::MD5Sum< ::picture_server::image_cmd > 
template<>
struct MD5Sum< ::picture_server::image_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::picture_server::image_cmd >::value();
  }
  static const char* value(const ::picture_server::image_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::picture_server::image_cmdResponse> should match 
// service_traits::DataType< ::picture_server::image_cmd > 
template<>
struct DataType< ::picture_server::image_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::picture_server::image_cmd >::value();
  }
  static const char* value(const ::picture_server::image_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PICTURE_SERVER_MESSAGE_IMAGE_CMD_H