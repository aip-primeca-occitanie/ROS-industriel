#!/usr/bin/env python
# license removed for brevity
import rospy
import time
import thread
from std_msgs.msg import String


rospy.init_node("coord_cart", anonymous=True)


def saisie_coord():
	return("11X"+str(input("j1 :"))+"X"+str(input("j2 :"))+"X"+str(input("j3 :"))+"X"+str(input("j4 :"))+"X"+str(input("j5 :"))+"X"+str(input("j6 :"))+"XF")


def callback(data):
	global pause
	coord = data.data
	if (coord[0] == "4") :
		pause = coord[len(coord)-3]
		#print(coord[len(coord)-3])


def coord_cart():
	global pause
	pub = rospy.Publisher("poscart", String, queue_size=10)
	rate = rospy.Rate(10) # 10hz
	pos_str = "32X0XF"
	pub.publish(pos_str)
	time.sleep(0.1)
	while not rospy.is_shutdown():
		pos_str = "2X100X100X100X500X500X0X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X-261.64X349.51X50X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X-261.64X349.51X-200X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "2X50X50X50X100X100X0X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X-261.64X349.51X-339.87X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "32X1XF"
		pub.publish(pos_str)
		while (pause != "0") :
			time.sleep(0.1)
		while (pause != "1") :
			time.sleep(0.1)
		time.sleep(0.1)
		pos_str = "122X-261.64X349.51X-200X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "2X100X100X100X500X500X2X50X100XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X-261.64X349.51X50X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "2X100X100X100X500X500X2X100X50XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X26.49X329.30X50X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "2X100X100X100X500X500X0X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X26.49X329.30X-100X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "2X50X50X50X100X100X0X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "122X26.49X329.30X-143.28X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		pos_str = "32X0XF"
		pub.publish(pos_str)
		while (pause != "0") :
			time.sleep(0.1)
		while (pause != "1") :
			time.sleep(0.1)
		time.sleep(0.1)
		pos_str = "122X26.49X329.30X-100X-180X0X0XF"
		pub.publish(pos_str)
		time.sleep(0.1)
		rate.sleep()
		



def recept():
	rospy.Subscriber("retourpos", String, callback)
	rospy.spin()

	
if __name__ == "__main__":
	thread.start_new_thread(coord_cart,())
	recept()
