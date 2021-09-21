#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String




def control_keyboard():
	x = 95
	y = 42
	z = 88
	rx = 84
	ry = -34
	rz = -30
	pub = rospy.Publisher("poscart", String, queue_size=10)
	rospy.init_node("control_keyboard", anonymous=True)
	rate = rospy.Rate(10) # 10hz
	while not rospy.is_shutdown():
		key = raw_input()
		if (key == "a"):
			x = x + 1
		elif (key == "z"):
			y = y + 1
		elif (key == "e"):
			z = z + 1
		elif (key == "r"):
			rx = rx + 1
		elif (key == "t"):
			ry = ry + 1
		elif (key == "y"):
			rz = rz + 1
		elif (key == "q"):
			x = x - 1
		elif (key == "s"):
			y = y - 1
		elif (key == "d"):
			z = z - 1
		elif (key == "f"):
			rx = rx - 1
		elif (key == "g"):
			ry = ry - 1
		elif (key == "h"):
			rz = rz - 1
		pos_str = str(x)+"X"+str(y)+"X"+str(z)+"X"+str(rx)+"X"+str(ry)+"X"+str(rz)+"XF"
		print(pos_str)
		#rospy.loginfo(pos_str)
		pub.publish(pos_str)
		rate.sleep()


if __name__ == "__main__":
	try:
		control_keyboard()
	except rospy.ROSInterruptException:
		pass
