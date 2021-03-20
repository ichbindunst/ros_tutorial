#include <ros/ros.h>
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"


class Publisher_Subscriber{
    private:
        ros::NodeHandle node_handle;

        ros::Publisher vel_pub;
        ros::Subscriber vel_sub;

    public:
        Publisher_Subscriber(){
            vel_pub = node_handle.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);
            vel_sub = node_handle.subscribe("/turtle1/pose", 1, &Publisher_Subscriber::callbackFunction_velocity_sub, this);
        }

    public:

        void velocity_pub(){
            geometry_msgs::Twist velocity_pub_msg;
            velocity_pub_msg.linear.x = 0.5;
            velocity_pub_msg.angular.z = 0.2;
            vel_pub.publish(velocity_pub_msg);
        };

        void callbackFunction_velocity_sub(const turtlesim::Pose::ConstPtr& msg){
            ROS_INFO_STREAM("linear velocity x: " << msg->linear_velocity << " angular velocity z: " << msg->angular_velocity);
        };

};



int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher_subscriber");
    ros::NodeHandle nh;

    Publisher_Subscriber pub_sub;

    ros::Rate loop_rate(1);

    while(ros::ok()){
        pub_sub.velocity_pub();
        ros::spinOnce();

        loop_rate.sleep();

    }
}
