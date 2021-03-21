// Generated by gencpp from file rosservice_examples/PersonRequest.msg
// DO NOT EDIT!


#ifndef ROSSERVICE_EXAMPLES_MESSAGE_PERSONREQUEST_H
#define ROSSERVICE_EXAMPLES_MESSAGE_PERSONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosservice_examples
{
template <class ContainerAllocator>
struct PersonRequest_
{
  typedef PersonRequest_<ContainerAllocator> Type;

  PersonRequest_()
    : name()
    , age(0)
    , gender()  {
    }
  PersonRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , gender(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _age_type;
  _age_type age;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gender_type;
  _gender_type gender;





  typedef boost::shared_ptr< ::rosservice_examples::PersonRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosservice_examples::PersonRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PersonRequest_

typedef ::rosservice_examples::PersonRequest_<std::allocator<void> > PersonRequest;

typedef boost::shared_ptr< ::rosservice_examples::PersonRequest > PersonRequestPtr;
typedef boost::shared_ptr< ::rosservice_examples::PersonRequest const> PersonRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosservice_examples::PersonRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosservice_examples::PersonRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosservice_examples

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosservice_examples::PersonRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosservice_examples::PersonRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosservice_examples::PersonRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f4ca4a81c96a0e323b856b9e382f9341";
  }

  static const char* value(const ::rosservice_examples::PersonRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf4ca4a81c96a0e32ULL;
  static const uint64_t static_value2 = 0x3b856b9e382f9341ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosservice_examples/PersonRequest";
  }

  static const char* value(const ::rosservice_examples::PersonRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
uint8  age\n\
string gender\n\
\n\
";
  }

  static const char* value(const ::rosservice_examples::PersonRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.gender);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PersonRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosservice_examples::PersonRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosservice_examples::PersonRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.age);
    s << indent << "gender: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gender);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSSERVICE_EXAMPLES_MESSAGE_PERSONREQUEST_H
