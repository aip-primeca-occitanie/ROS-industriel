#!/usr/bin/env python

import socket
import time

HOST = '192.168.1.50'
PORT = 11000

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((HOST, PORT))
print 'Connexion vers ' + HOST + ':' + str(PORT) + ' reussie.'

while 1:
	message = '12'
	print 'Envoi de :' + message
	n = client.send(message)
	if (n != len(message)):
	        print 'Erreur envoi.'
	else:
	        print 'Envoi ok.'
	time.sleep(1)

print 'Reception...'
donnees = client.recv(1024)
print 'Recu :', donnees

print 'Deconnexion.'
client.close()
