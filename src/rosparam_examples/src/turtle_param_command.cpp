#include <ros/ros.h>
#include "std_srvs/Empty.h"

int main(int argc, char **argv)
{
    int red, green, blue;

    ros::init(argc, argv, "turtle_param_command");
    ros::NodeHandle nh;

    ros::param::get("/background_r", red);
    ros::param::get("/background_g", green);
    ros::param::get("/background_b", blue);

    ROS_INFO_STREAM("get background color " << red << " " << green << " " << blue);

    ros::param::set("/background_r", 255);
    ros::param::set("/background_g", 255);
    ros::param::set("/background_b", 255);

    ROS_INFO_STREAM("set background color white");

    ros::param::get("/background_r", red);
    ros::param::get("/background_g", green);
    ros::param::get("/background_b", blue);

    ROS_INFO_STREAM("the background color now is: " << red << " " << green << " " << blue);


    // call the service and refresh the background color
    ros::service::waitForService("/clear");
    ros::ServiceClient clear_bakcground = nh.serviceClient<std_srvs::Empty>("/clear");

    std_srvs::Empty srv;
    clear_bakcground.call(srv);


    sleep(1);

    return 0;
}
