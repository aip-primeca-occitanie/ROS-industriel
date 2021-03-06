// Generated by gencpp from file com_arm/Objet_camera.msg
// DO NOT EDIT!


#ifndef COM_ARM_MESSAGE_OBJET_CAMERA_H
#define COM_ARM_MESSAGE_OBJET_CAMERA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace com_arm
{
template <class ContainerAllocator>
struct Objet_camera_
{
  typedef Objet_camera_<ContainerAllocator> Type;

  Objet_camera_()
    : go(false)
    , x(0.0)
    , y(0.0)  {
    }
  Objet_camera_(const ContainerAllocator& _alloc)
    : go(false)
    , x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _go_type;
  _go_type go;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::com_arm::Objet_camera_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::com_arm::Objet_camera_<ContainerAllocator> const> ConstPtr;

}; // struct Objet_camera_

typedef ::com_arm::Objet_camera_<std::allocator<void> > Objet_camera;

typedef boost::shared_ptr< ::com_arm::Objet_camera > Objet_cameraPtr;
typedef boost::shared_ptr< ::com_arm::Objet_camera const> Objet_cameraConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::com_arm::Objet_camera_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::com_arm::Objet_camera_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::com_arm::Objet_camera_<ContainerAllocator1> & lhs, const ::com_arm::Objet_camera_<ContainerAllocator2> & rhs)
{
  return lhs.go == rhs.go &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::com_arm::Objet_camera_<ContainerAllocator1> & lhs, const ::com_arm::Objet_camera_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace com_arm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::com_arm::Objet_camera_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com_arm::Objet_camera_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com_arm::Objet_camera_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com_arm::Objet_camera_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com_arm::Objet_camera_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com_arm::Objet_camera_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::com_arm::Objet_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c992af9418b622ed983e7d58c6e43e4";
  }

  static const char* value(const ::com_arm::Objet_camera_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c992af9418b622eULL;
  static const uint64_t static_value2 = 0xd983e7d58c6e43e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::com_arm::Objet_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "com_arm/Objet_camera";
  }

  static const char* value(const ::com_arm::Objet_camera_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::com_arm::Objet_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool go\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::com_arm::Objet_camera_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::com_arm::Objet_camera_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.go);
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Objet_camera_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::com_arm::Objet_camera_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::com_arm::Objet_camera_<ContainerAllocator>& v)
  {
    s << indent << "go: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.go);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COM_ARM_MESSAGE_OBJET_CAMERA_H
