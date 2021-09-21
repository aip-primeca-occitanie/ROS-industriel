#!/usr/bin/env python


################
#### Entete ####
################
#
# This project has received funding from the European Union s Horizon 2020 research and innovation programme under grant agreement No 732287.
# The RIO project starts in Jan 2020 and ends in Dec 2020.
#
# Description du programme
#  -> Configuration et creation du noeud serveur TCP/IP servant a la communication entre la couche de controle ROS et le driver du controleur
#
# Entree
#  -> message du topic /consigne de type std_msgs/String (variable "coord")
#  -> trames de retour du robot envoyees par le driver du controleur sur la liaison TCP/IP (variable "buf")
#
# Sortie 
#  -> trames de controle receptionnees par la variable "coord" destinees au driver du controleur du robot
#  -> message du topic /retour de type std_msgs/String
#
# Historique
#  -> Creation: 29/09/2020, AIP PRIMECA Occitanie, Nathan MORET
#
######################
#### Fin d entete ####
######################


import time
import socket
import rospy
import thread
import logging
from std_msgs.msg import String
from com_arm.msg import Joint

 
###################### Configuration du serveur TCP/IP ###########################

HOST=''
PORT=50002
BUFFER=4096
sock=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
sock.bind((HOST,PORT))
sock.listen(5)
 
#################### Creation du noeud serveur TCP/IP ###########################

global name
name = input("What's your robot? ")

#Initialisation du noeud
rospy.init_node(name+'_serveur2_tcp',anonymous=False)

#Definition des variables globales
global coord
coord = ''
global envoi
envoi = 0
	

#Fonction de reception des donnees du controleur ROS
def callback(data):
	global coord
	global envoi
	coord = data.data
	if (coord != "n"): #"n" est une condition de redemarrage du serveur
		envoi = 1  #Flag d'envoie des trames au driver du robot

#Fonction de creation et de gestion du serveur TCP/IP
def serveur():
	global coord
	global envoi
	global name
	print 'i am listening'
	pub = rospy.Publisher(name+"_retour", String, queue_size=10)

	while not rospy.is_shutdown():
		buf = ''
		con,addr=sock.accept() #Connection a la liaison TCP/IP
		print 'connection'
		con.settimeout(1)
		#Test de lecture et d ecriture sur la liaison TCP/IP
		buf=con.recv(BUFFER) 
		time.sleep(1)
		con.send('')
		
		while (coord != "n" and buf != '') : #Boucle de fonctionnement du serveur une fois la connection etablie
			try:
				buf=con.recv(BUFFER)
			except socket.timeout:
				print 'time out'
				break
			
			pub.publish(buf)

			if (envoi == 1) :
				print(coord)
				con.send(coord)
				envoi = 0
		print 'close'
		con.close() #Fermeture de la connection
		serveur() #Redemarrage du serveur
		
	con.close()


#Fonction de publication des trames de supervision a la couche de controle ROS
def recept():
	global name
	rospy.Subscriber(name+"_consigne", String, callback)
	rospy.spin()

	
#Creation de deux threads, un pour le serveur, l'autre pour la souscrition ou messages de la couche de controle ROS
if __name__ == "__main__":
	thread.start_new_thread(serveur,())
	recept()