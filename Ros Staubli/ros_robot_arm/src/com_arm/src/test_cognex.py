#!/usr/bin/env python

import rospy
import socket
import time
import struct



HOST = '192.168.1.99'
PORT = 23

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((HOST, PORT))
print ('Connexion vers ' + HOST + ':' + str(PORT) + ' reussie.')



print (client.recv(1024))

message = 'admin\r\n'.encode('ascii')
n = client.send(message)
print (client.recv(1024))


message = '\r\n'.encode('ascii')
n = client.send(message)
print (client.recv(1024))

while True:
    message = 'SIA00510\r\n'
    client.send(message)
    time.sleep(2)
    message = 'SIA005100\r\n'
    client.send(message)
    time.sleep(2)


'''
buf = b''            # this caused an error, I added a b so it would be read as bytes and not string
while len(buf)<4:
    buf += client.recv(4-len(buf))
size = struct.unpack('!i', buf)
print("receiving %s bytes" % size)

with open('tst.jpg', 'wb') as img:
    while True:
        data = client.recv(1024)
        if not data:
            break
        img.write(data)
print('received image')

'''
'''
data = b''
recept = client.recv(1024)
while (recept):
    data += recept
    recept = client.recv(1024)
    
    print (recept)

print (data)


print ('Deconnexion.')
client.close()
'''