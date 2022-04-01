// Generated by gencpp from file com_arm/Retour_cellule.msg
// DO NOT EDIT!


#ifndef COM_ARM_MESSAGE_RETOUR_CELLULE_H
#define COM_ARM_MESSAGE_RETOUR_CELLULE_H

#include <ros/service_traits.h>


#include <com_arm/Retour_celluleRequest.h>
#include <com_arm/Retour_celluleResponse.h>


namespace com_arm
{

struct Retour_cellule
{

typedef Retour_celluleRequest Request;
typedef Retour_celluleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Retour_cellule
} // namespace com_arm


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::com_arm::Retour_cellule > {
  static const char* value()
  {
    return "c27a8c7ce1ff1471d92744cbc43b9273";
  }

  static const char* value(const ::com_arm::Retour_cellule&) { return value(); }
};

template<>
struct DataType< ::com_arm::Retour_cellule > {
  static const char* value()
  {
    return "com_arm/Retour_cellule";
  }

  static const char* value(const ::com_arm::Retour_cellule&) { return value(); }
};


// service_traits::MD5Sum< ::com_arm::Retour_celluleRequest> should match
// service_traits::MD5Sum< ::com_arm::Retour_cellule >
template<>
struct MD5Sum< ::com_arm::Retour_celluleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::com_arm::Retour_cellule >::value();
  }
  static const char* value(const ::com_arm::Retour_celluleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::com_arm::Retour_celluleRequest> should match
// service_traits::DataType< ::com_arm::Retour_cellule >
template<>
struct DataType< ::com_arm::Retour_celluleRequest>
{
  static const char* value()
  {
    return DataType< ::com_arm::Retour_cellule >::value();
  }
  static const char* value(const ::com_arm::Retour_celluleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::com_arm::Retour_celluleResponse> should match
// service_traits::MD5Sum< ::com_arm::Retour_cellule >
template<>
struct MD5Sum< ::com_arm::Retour_celluleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::com_arm::Retour_cellule >::value();
  }
  static const char* value(const ::com_arm::Retour_celluleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::com_arm::Retour_celluleResponse> should match
// service_traits::DataType< ::com_arm::Retour_cellule >
template<>
struct DataType< ::com_arm::Retour_celluleResponse>
{
  static const char* value()
  {
    return DataType< ::com_arm::Retour_cellule >::value();
  }
  static const char* value(const ::com_arm::Retour_celluleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COM_ARM_MESSAGE_RETOUR_CELLULE_H