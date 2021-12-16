#!/usr/bin/env python
# -*- coding: utf-8 -*-

# read_register
# read 10 registers and print result on stdout

# you can use the tiny modbus server "mbserverd" to test this code
# mbserverd is here: https://github.com/sourceperl/mbserverd

# the command line modbus client mbtget can also be useful
# mbtget is here: https://github.com/sourceperl/mbtget

from pyModbusTCP.client import ModbusClient
import rospy
from std_msgs.msg import String
from schneider.srv import *
flag = 0
SERVER_HOST = "192.168.0.102"
print("adresse ip :")
print(SERVER_HOST)
SERVER_PORT = 502
rospy
print("port :")
print ('Port {}'.format(SERVER_PORT))
c = ModbusClient()
c.host(SERVER_HOST)
c.port(SERVER_PORT)
c.open()
print('Demande accès serveur')
rospy.init_node('client_cellule_tp',anonymous=False)

def retour(req):
	if not c.is_open() :
		print('Serveur non ouvert\n')
		c.open()
	if c.is_open():
		global flag
		if flag == 0 :		
			print('serveur ouvert\n')
			flag = 1
		resp = Retour_celluleResponse()
		coils = c.read_coils(0, 76)
		print ("lecture de la mémoire automate")
		if coils :
			resp.ST1 = coils[0]
			resp.ST2 = coils[1]
			resp.ST3 = coils[2]
			resp.ST4 = coils[3]
			resp.ST5 = coils[4]
			resp.ST20 = coils[5]
			resp.ST21 = coils[6]
			resp.ST22 = coils[7]
			resp.ST23 = coils[8]
			resp.ST24 = coils[9]
			resp.R1D = coils[10]
			resp.R2D = coils[11]
			resp.R11D = coils[12]
			resp.R12D = coils[13]
			resp.R1G = coils[14]
			resp.R2G = coils[15]
			resp.R11G = coils[16]
			resp.R12G = coils[17]
			resp.PI1 = coils[18]
			resp.PI2 = coils[19]
			resp.PI7 = coils[20]
			resp.PI8 = coils[21]
			resp.D1 = coils[22]
			resp.D2 = coils[23]
			resp.D11 = coils[24]
			resp.D12 = coils[25]
			resp.V1 = coils[26]
			resp.V2 = coils[27]
			resp.V11 = coils[28]
			resp.V12 = coils[29]
			resp.PS1 = coils[50]
			resp.PS2 = coils[51]
			resp.PS3 = coils[52]
			resp.PS4 = coils[53]
			resp.PS5 = coils[54]
			resp.PS20 = coils[55]
			resp.PS21 = coils[56]
			resp.PS22 = coils[57]
			resp.PS23 = coils[58]
			resp.PS24 = coils[59]
			resp.D1D = coils[60]
			resp.D2D = coils[61]
			resp.D11D = coils[62]
			resp.D12D = coils[63]
			resp.D1G = coils[64]
			resp.D2G = coils[65]
			resp.D11G = coils[66]
			resp.D12G = coils[67]
			resp.CPI1 = coils[68]
			resp.CPI2 = coils[69]
			resp.CPI7 = coils[70]
			resp.CPI8 = coils[71]
			resp.CP1 = coils[72]
			resp.CP2 = coils[73]
			resp.CP9 = coils[74]
			resp.CP10 = coils[75]
			return resp
	
def callback(data):
	trame = data.data.split(',')
	for i in range((len(trame))):
		if (i%2 != 0):
			if not c.is_open() :
				c.open()
			if c.is_open() :
				c.write_single_coil(int(trame[i]), int(trame[i+1]))
	

if __name__ == "__main__":
	rospy.Service('retour_cellule', Retour_cellule, retour)
	rospy.Subscriber("control_cellule", String, callback)
	rospy.spin()
	

c.close()
