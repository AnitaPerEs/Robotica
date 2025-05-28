#!/usr/bin/env python
import rospy
from turtlesim.msg import Pose

def callback_turtle1(pose):
    rospy.loginfo("TURTLE1 → x=%.2f, y=%.2f, θ=%.2f", pose.x, pose.y, pose.theta)

def callback_cocoooo(pose):
    rospy.loginfo("COCOOOO → x=%.2f, y=%.2f, θ=%.2f", pose.x, pose.y, pose.theta)

def leer_pose():
    rospy.init_node('leer_pose', anonymous=True)
    
    # Suscripción a turtle1
    rospy.Subscriber('/turtle1/pose', Pose, callback_turtle1)
    
    # Suscripción a cocoooo (asegúrate de haberla creado)
    rospy.Subscriber('/cocoooo/pose', Pose, callback_cocoooo)
    
    rospy.spin()

if __name__ == '__main__':
    leer_pose()
