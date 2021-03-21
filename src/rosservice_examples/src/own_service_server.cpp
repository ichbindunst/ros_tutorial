#include "ros/ros.h"
#include "rosservice_examples/Person.h"

bool personCallback(rosservice_examples::Person::Request &req, rosservice_examples::Person::Response &res){
    ROS_INFO_STREAM("Person: name: " << req.name << " age: " << (int)req.age << " gender: " << req.gender);
    res.result = "ok";

    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "own_service_server");
    ros::NodeHandle nh;

    ros::ServiceServer person_service = nh.advertiseService("/show_person", personCallback);

    ROS_INFO("Ready to show person information.");
    ros::spin();

    return 0;
}
