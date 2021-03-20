#include "ros/ros.h"
#include "rostopic_examples/Person.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "own_message_publisher");
    ros::NodeHandle nh;

    ros::Publisher own_message_pub = nh.advertise<rostopic_examples::Person>("/own_message_topic", 10);

    ros::Rate loop_rate(1);
    while (ros::ok())
    {
        rostopic_examples::Person own_msg;
        own_msg.name = "Leo";
        own_msg.age = 26;
        own_msg.sex = "male";

        own_message_pub.publish(own_msg);

        ROS_INFO("Publish Person Info: name:%s  age:%d  sex:%s",own_msg.name.c_str(), own_msg.age, own_msg.sex.c_str());

        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}
