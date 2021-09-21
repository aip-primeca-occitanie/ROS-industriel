#!/usr/bin/env python

import rospy
import sys
import telnetlib
from ftplib import FTP
import time
import cv2


# cognex's config
ip = "192.168.1.99"
user = 'admin'
password = ''

# telnet login
tn = telnetlib.Telnet(ip)
telnet_user = user+'\r\n'
tn.write(telnet_user) #the user name is admin
tn.write("\r\n") #there is no password - just return - now logged in
time.sleep(0.001)
tn.read_eager()
#print('Telnet Logged in')
tn.write("Put Live 1\r\n")
time.sleep(0.2)
tn.read_eager()


tn.write("SFA00510/r/n")
time.sleep(0.1)
print(tn.read_eager())

tn.write("Put Live 0\r\n")
tn.close()
