#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

def mover_tortugas():
    rospy.init_node('mover_dos_tortugas', anonymous=True)
    
    # Publicadores para ambas tortugas
    pub1 = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    pub2 = rospy.Publisher('/cocoooo/cmd_vel', Twist, queue_size=10)
    
    rate = rospy.Rate(10)  # Mayor frecuencia para más precisión

    cmd1 = Twist()
    cmd2 = Twist()

    start_time = rospy.get_time()

    while not rospy.is_shutdown():
        elapsed = rospy.get_time() - start_time

        #turtle1 dibuja estrella: cada ciclo dura 3.26 s (2 avanzar + 1.26 girar)
        ciclo = elapsed % (5 * 3.26)  # ciclo total: 5 puntas
        fase = ciclo % 3.26

        if fase < 2.0:
            # Avanzar recto
            cmd1.linear.x = 2.0
            cmd1.angular.z = 0.0
        else:
            # Girar para estrella
            cmd1.linear.x = 0.0
            cmd1.angular.z = 2.0  # gira por 1.26 s

        #cocoooo: se mueve en círculos todo el tiempo
        cmd2.linear.x = 1.0
        cmd2.angular.z = 2.0

        pub1.publish(cmd1)
        pub2.publish(cmd2)

        rate.sleep()

if __name__ == '__main__':
    try:
        mover_tortugas()
    except rospy.ROSInterruptException:
        pass