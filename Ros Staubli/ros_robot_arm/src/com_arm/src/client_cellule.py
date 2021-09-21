#!/usr/bin/env python
# -*- coding: utf-8 -*-

# read_register
# read 10 registers and print result on stdout

# you can use the tiny modbus server "mbserverd" to test this code
# mbserverd is here: https://github.com/sourceperl/mbserverd

# the command line modbus client mbtget can also be useful
# mbtget is here: https://github.com/sourceperl/mbtget

from pyModbusTCP.client import ModbusClient
import time
import rospy
import thread
from com_arm.msg import Retour_navette
from std_msgs.msg import String

SERVER_HOST = "192.168.0.102"
SERVER_PORT = 502

c = ModbusClient()
c.host(SERVER_HOST)
c.port(SERVER_PORT)

rospy.init_node('client_cellule',anonymous=False)

global coils
coils = False
global consigne
consigne = []
global envoi
envoi = 0
global pub
pub = rospy.Publisher("retour_navette", Retour_navette, queue_size=10)
global msg
msg = Retour_navette()



def Aiguillage(tab_a):
	global coils
	rotation = []

	for i in range(len(tab_a)) :
		if tab_a[i][0] == "A1" :
			coils = c.write_single_coil(22,1)
			coils = c.write_single_coil(26,0)
		if tab_a[i][0] == "A2" :
			coils = c.write_single_coil(23,1)
			coils = c.write_single_coil(27,0)
		if tab_a[i][0] == "A11" :
			coils = c.write_single_coil(24,1)
			coils = c.write_single_coil(28,0)
		if tab_a[i][0] == "A12" :    
			coils = c.write_single_coil(25,1)
			coils = c.write_single_coil(29,0)
	print("dev")

	for i in range(len(tab_a)) :
		if tab_a[i] == ["A1","D"] :
			coils = c.write_single_coil(10,1)
			coils = c.write_single_coil(14,0)
			rotation.append("D1D")
		if tab_a[i] == ["A2","D"] :
			coils = c.write_single_coil(11,1)
			coils = c.write_single_coil(15,0)
			rotation.append("D2D")
		if tab_a[i] == ["A11","D"] :
			coils = c.write_single_coil(12,1)
			coils = c.write_single_coil(16,0)
			rotation.append("D11D")
		if tab_a[i] == ["A12","D"] :
			coils = c.write_single_coil(13,1)
			coils = c.write_single_coil(17,0)
			rotation.append("D12D")
		if tab_a[i] == ["A1","G"] :
			coils = c.write_single_coil(14,1)
			coils = c.write_single_coil(10,0)
			rotation.append("D1G")
		if tab_a[i] == ["A2","G"] :
			coils = c.write_single_coil(15,1)
			coils = c.write_single_coil(11,0)
			rotation.append("D2G")
		if tab_a[i] == ["A11","G"] :
			coils = c.write_single_coil(16,1)
			coils = c.write_single_coil(12,0)
			rotation.append("D11G")
		if tab_a[i] == ["A12","G"] :
			coils = c.write_single_coil(17,1)
			coils = c.write_single_coil(13,0)
			rotation.append("D12G")
	retour()
	
	for i in rotation:
		if (i=="D1D"):
			while(not coils[60]):
				retour()
		if (i=="D2D"):
			while(not coils[61]):
				retour()
		if (i=="D11D"):
			while(not coils[62]):
				retour()
		if (i=="D12D"):
			while(not coils[63]):
				retour()
		if (i=="D1G"):
			while(not coils[64]):
				retour()
		if (i=="D2G"):
			while(not coils[65]):
				retour()
		if (i=="D11G"):
			while(not coils[66]):
				retour()
		if (i=="D12G"):
			while(not coils[67]):
				retour()
	print("DG")
	

	for i in range(len(tab_a)) :
		if tab_a[i][0] == "A1" :
			coils = c.write_single_coil(26,1)
			coils = c.write_single_coil(22,0)
		if tab_a[i][0] == "A2" :
			coils = c.write_single_coil(27,1)
			coils = c.write_single_coil(23,0)
		if tab_a[i][0] == "A11" :
			coils = c.write_single_coil(28,1)
			coils = c.write_single_coil(24,0)
		if tab_a[i][0] == "A12" :
			coils = c.write_single_coil(29,1)
			coils = c.write_single_coil(25,0)
	print("ver")




def Stop(tab_s):
	global coils
	for i in range(len(tab_s)) :
		if tab_s[i][0] == "ST1" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(0,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(0,0)
		if tab_s[i][0] == "ST2" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(1,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(1,0)
		if tab_s[i][0] == "ST3" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(2,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(2,0)
		if tab_s[i][0] == "ST4" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(3,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(3,0)
		if tab_s[i][0] == "ST5" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(4,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(4,0)
		if tab_s[i][0] == "ST20" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(5,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(5,0)
		if tab_s[i][0] == "ST21" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(6,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(6,0)
		if tab_s[i][0] == "ST22" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(7,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(7,0)
		if tab_s[i][0] == "ST23" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(8,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(8,0)
		if tab_s[i][0] == "ST24" :
			if tab_s[i][1] == "GO" :
				coils = c.write_single_coil(9,1)
			if tab_s[i][1] == "STOP" :
				coils = c.write_single_coil(9,0)




def Taquet(tab_t):
	global coils
	for i in range(len(tab_t)) :
		if tab_t[i][0] == "PI1" :
			if tab_t[i][1] == "O" :
				coils = c.write_single_coil(18,1)
			if tab_t[i][1] == "F" :
				coils = c.write_single_coil(18,0)
		if tab_t[i][0] == "PI2" :
			if tab_t[i][1] == "O" :
				coils = c.write_single_coil(19,1)
			if tab_t[i][1] == "F" :
				coils = c.write_single_coil(19,0)
		if tab_t[i][0] == "PI7" :
			if tab_t[i][1] == "O" :
				coils = c.write_single_coil(20,1)
			if tab_t[i][1] == "F" :
				coils = c.write_single_coil(20,0)
		if tab_t[i][0] == "PI8" :
			if tab_t[i][1] == "O" :
				coils = c.write_single_coil(21,1)
			if tab_t[i][1] == "F" :
				coils = c.write_single_coil(21,0)




def retour():
	global pub
	global msg
	global coils
	coils = c.read_coils(0, 76)
	if coils:
		msg.ST1 = coils[0]
		msg.ST2 = coils[1]
		msg.ST3 = coils[2]
		msg.ST4 = coils[3]
		msg.ST5 = coils[4]
		msg.ST20 = coils[5]
		msg.ST21 = coils[6]
		msg.ST22 = coils[7]
		msg.ST23 = coils[8]
		msg.ST24 = coils[9]
		msg.R1D = coils[10]
		msg.R2D = coils[11]
		msg.R11D = coils[12]
		msg.R12D = coils[13]
		msg.R1G = coils[14]
		msg.R2G = coils[15]
		msg.R11G = coils[16]
		msg.R12G = coils[17]
		msg.PI1 = coils[18]
		msg.PI2 = coils[19]
		msg.PI7 = coils[20]
		msg.PI8 = coils[21]
		msg.D1 = coils[22]
		msg.D2 = coils[23]
		msg.D11 = coils[24]
		msg.D12 = coils[25]
		msg.V1 = coils[26]
		msg.V2 = coils[27]
		msg.V11 = coils[28]
		msg.V12 = coils[29]
		msg.PS1 = coils[50]
		msg.PS2 = coils[51]
		msg.PS3 = coils[52]
		msg.PS4 = coils[53]
		msg.PS5 = coils[54]
		msg.PS20 = coils[55]
		msg.PS21 = coils[56]
		msg.PS22 = coils[57]
		msg.PS23 = coils[58]
		msg.PS24 = coils[59]
		msg.D1D = coils[60]
		msg.D2D = coils[61]
		msg.D11D = coils[62]
		msg.D12D = coils[63]
		msg.D1G = coils[64]
		msg.D2G = coils[65]
		msg.D11G = coils[66]
		msg.D12G = coils[67]
		msg.CPI1 = coils[68]
		msg.CPI2 = coils[69]
		msg.CPI7 = coils[70]
		msg.CPI8 = coils[71]
		msg.CP1 = coils[72]
		msg.CP2 = coils[73]
		msg.CP9 = coils[74]
		msg.CP10 = coils[75]
		pub.publish(msg)

def client_modbus():
	global coils
	global consigne
	global envoi
	

	while not rospy.is_shutdown():
	    # open or reconnect TCP to server
		if not c.is_open():
			if not c.open():
				print("unable to connect to "+SERVER_HOST+":"+str(SERVER_PORT))

	    # if open() is ok, read register (modbus function 0x03)
		if c.is_open():
			retour()
			if (envoi == 1):
				Stop(consigne)
				envoi = 0
			elif (envoi == 2):
				Aiguillage(consigne)
				envoi = 0
			elif (envoi == 3):
				Taquet(consigne)
				envoi = 0




def callback(data):
	global consigne
	consigne = []
	global envoi
	trame = data.data.split(',')
	for i in range((len(trame))):
		if (i%2 != 0):
			consigne.append([trame[i],trame[i+1]])
	if (trame[0] == "S"):
		envoi = 1
	elif (trame[0] == "A"):
		envoi = 2
	elif (trame[0] == "T"):
		envoi = 3
	print(consigne)




def recept():
	rospy.Subscriber("control_navette", String, callback)
	rospy.spin()
	



if __name__ == "__main__":
	thread.start_new_thread(client_modbus,())
	recept()


	

		
	
Stop([["ST20","STOP"],["ST21","STOP"],["ST22","STOP"],["ST24","STOP"],["ST1","STOP"],["ST4","STOP"],["ST5","STOP"],["ST3","STOP"],["ST2","STOP"],["ST23","STOP"]])





