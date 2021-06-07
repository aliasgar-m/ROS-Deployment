#! /usr/bin/env python

import rospy
from std_msgs.msg import String


def loadParameter():
    talker_topic_name = \
            rospy.get_param("/Talker_Node/talker_topic_name",
                            "/ros-docker")
    node_rate = rospy.get_param("/Talker_Node/node_rate", 1)
    return str(talker_topic_name), node_rate


def talker():
    rospy.init_node('Talker_Node', anonymous=True)
    topic_name, rate_ = loadParameter()
    pub = rospy.Publisher(topic_name, String, queue_size=10)
    rate = rospy.Rate(rate_)

    while not rospy.is_shutdown():
        hello_str = "hello world"
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        print("\n")
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
