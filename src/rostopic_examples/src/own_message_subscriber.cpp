#include "ros/ros.h"
#include "rostopic_examples/Person.h"

void own_message_callback(const rostopic_examples::Person::ConstPtr& own_msg)
{
    ROS_INFO("name: %s, age: %d, gender: %s", own_msg->name.c_str(), own_msg->age, own_msg->sex.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "own_message_subscriber");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("/own_message_topic", 10, own_message_callback);

    ros::spin();

    return 0;
}
