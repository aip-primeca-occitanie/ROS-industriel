#!/usr/bin/env python
# license removed for brevity
import rospy
import time
from std_msgs.msg import String


def saisie_coord():
	return("11X"+str(input("j1 :"))+"X"+str(input("j2 :"))+"X"+str(input("j3 :"))+"X"+str(input("j4 :"))+"X"+str(input("j5 :"))+"X"+str(input("j6 :"))+"XF")


def coord_cart():
	pub = rospy.Publisher("poscart", String, queue_size=10)
	rospy.init_node("coord_cart", anonymous=True)
	rate = rospy.Rate(10) # 10hz
	while not rospy.is_shutdown():
		
		pos_str = raw_input("Nouvelle position ? [o/n] :")
		if (pos_str == "o") :
			pos_str=saisie_coord()
		print(pos_str)
		#rospy.loginfo(pos_str)
		pub.publish(pos_str)
		rate.sleep()

if __name__ == "__main__":
	try:
		coord_cart()
	except rospy.ROSInterruptException:
		pass
