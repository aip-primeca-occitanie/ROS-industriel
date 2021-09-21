#!/usr/bin/env python
# -*- coding: utf-8 -*-

# read_register
# read 10 registers and print result on stdout

# you can use the tiny modbus server "mbserverd" to test this code
# mbserverd is here: https://github.com/sourceperl/mbserverd

# the command line modbus client mbtget can also be useful
# mbtget is here: https://github.com/sourceperl/mbtget

import rospy
import time
from com_arm.msg import Retour_navette
from std_msgs.msg import String

rospy.init_node('control_cellule',anonymous=False)

pub = rospy.Publisher("control_navette", String, queue_size=10)
global msg
msg = ''

def Aiguillage(tab_a):
	global msg
	msg = 'A'
	for i in range(len(tab_a)):
		for j in range(len(tab_a[i])):
			msg += ','+tab_a[i][j]
	pub.publish(msg)

def Stop(tab_s):
	global msg
	msg = 'S'
	for i in range(len(tab_s)):
		for j in range(len(tab_s[i])):
			msg += ','+tab_s[i][j]
	pub.publish(msg)

def Taquet(tab_t):
	global msg
	msg = 'T'
	for i in range(len(tab_t)):
		for j in range(len(tab_t[i])):
			msg += ','+tab_t[i][j]
	pub.publish(msg)

while not rospy.is_shutdown():
	Aiguillage([["A1","G"],["A2","G"],["A11","D"],["A12","D"]])
	time.sleep(2)
	Aiguillage([["A1","D"],["A2","D"],["A11","G"],["A12","G"]])
	time.sleep(2)
