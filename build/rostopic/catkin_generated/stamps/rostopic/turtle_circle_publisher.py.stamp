import rospy
from geometry_msgs.msg import Twist

def turtle_circle_publisher():
    rospy.init_node('turtle_circle_publisher', anonymous=True)
    turtle_circle_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        turtle_circle_msg = Twist()
        turtle_circle_msg.linear.x = 0.5
        turtle_circle_msg.angular.z = 0.2

        turtle_vel_pub.publish(turtle_circle_msg)
        rospy.loginfo("Publish turtle velocity command [%0.2f m/s, %0.2f rad/s]", turtle_circle_msg.linear.x, turtle_circle_msg.angular.z)

        rate.sleep()

if __name__ == '__main__'

    try:
        turtle_circle_publisher()
    except rospy.ROSInterruptException:
        pass
