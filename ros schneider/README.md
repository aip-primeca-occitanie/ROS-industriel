# projet-ROS-robots-industriels

Pour piloter un automate type (modicon) de chez Schneider , les étapes sont necessaire sur l'automate :

1.faire apparaitre les mémoires partagés
2.vérifier l'adresse que vous devez partager (et son type ici, par un booléens à l'adresse %m0)
3.déclaré la variable que l'on souhaite partager
4.recopier la variable réel et en faire une copie image vers la copie que l'on souhaite partager

script de base pour lire les entrées sorties

> from pyModbusTCP.client import ModbusClient
> import time
>
> SERVER_HOST = "xxx.xxx.xxx.xxx"
> SERVER_PORT = 502
>
> c = ModbusClient()
>
> # uncomment this line to see debug message
> #c.debug(True)
>
> # define modbus server host, port
> c.host(SERVER_HOST)
> c.port(SERVER_PORT)
>
> while True:
>     # open or reconnect TCP to server
>     if not c.is_open():
>         if not c.open():
>             print("unable to connect to "+SERVER_HOST+":"+str(SERVER_PORT))
>
>     # if open() is ok, read register (modbus function 0x03)
>     if c.is_open():
>         regs = c.read_coils(0,1)
>         # if success display registers
>         if regs:
>             print("reg ad #0 to 1: "+str(regs))
