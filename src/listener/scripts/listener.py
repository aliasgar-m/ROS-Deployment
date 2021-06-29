#! /usr/bin/env python

import rospy
from std_msgs.msg import String


def loadParameter():
    listener_topic_name = \
            rospy.get_param("/Listener_Node/listener_topic_name",
                            "/rosdocker")
    return str(listener_topic_name)


def callback(data):
    rospy.loginfo("I heard %s\n", data.data)


def listener():
    topic_name = loadParameter()
    rospy.init_node('Listener_Node', anonymous=True)
    rospy.Subscriber(topic_name, String, callback)
    rospy.spin()


if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
