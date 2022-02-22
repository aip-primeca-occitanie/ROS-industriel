# projet-ROS_industriel => communication avec un automate Scheinder

Ce projet a été développé sous <b>ubuntu 20.03</b>, avec <b>ros noetic</b> (python 3.8 et gcc 14).

Pour piloter un automate type (modicon) de chez Schneider , les étapes sont necessaire sur l'automate. Elles permettent la mise en place de la mémoire partagée. 

1. faire apparaitre les mémoires partagés (mise au point.png)
2. vérifier l'adresse que vous devez partager (et son type ici, par un booléens à l'adresse %m0) (objet d'ES.png)
3. déclaré la variable que l'on souhaite partager  (editeur.png) (varialbe automate cellule.png)
4. recopier la variable réel et en faire une copie image vers la copie que l'on souhaite partager (equation signal.png)

Le programme fonctionne de la façon suivante : 

1. La mémoire partagée met à disposition les informations automate (écriture /lecture)
2. Le programme python <b>client_cellule_tp.py</b> va lire et ecrire ses entrées sorties sur l'automate
3. Le client_cellule_tp.py va mettre les informations sur ROS
4. Le programme <b>app_cellule.cpp</b> va orchestrer le scénario préparé par l'utilisateur

Voici le script de base pour lire les entrées sorties (en python):

```
from pyModbusTCP.client import ModbusClient
import time

SERVER_HOST = "xxx.xxx.xxx.xxx"
SERVER_PORT = 502

c = ModbusClient()

# uncomment this line to see debug message
#c.debug(True)

# define modbus server host, port
c.host(SERVER_HOST)
c.port(SERVER_PORT)

while True:
     # open or reconnect TCP to server
     if not c.is_open():
         if not c.open():
             print("unable to connect to "+SERVER_HOST+":"+str(SERVER_PORT))

     # if open() is ok, read register (modbus function 0x03)
     if c.is_open():
         regs = c.read_coils(0,1)
         # if success display registers
         if regs:
             print("reg ad #0 to 1: "+str(regs))
``` 

## Le dossier est prêt à la compilation

Afin d'afficher les informations des programmes, il est necessaire de mettre xterm sur votre environnement de développement :
```bash
 sudo apt-get install xterm
```
Création de votre de dossier de développement : 
```bash
# change to the src folder of the Catkin workspace
cd ~/catkin_ws/src (ou le dossier de votre choix)


https://github.com/aip-primeca-occitanie/ROS-industriel/tree/master/ros%20schneider.git

# change to the root of the Catkin workspace
cd ~/catkin_ws/

# build the workspace
catkin_make
```

## Activation de votre dossier de travail

Si vous avez plusieurs espaces de travail, vous pouvez entrer les commandes suivantes :

```bash
source ~/catkin_ws/devel/setup.bash
```

Si vous avez un seul et unique espace de travail; vous pouvez entrer les commandes suivantes:

```bash
echo "source  ~/catkin_ws/devel/setup.bash"  >>  ~/.bashrc 
source ~/.bashrc 
```

## Enfin vous pourrez lancer votre roslaunch

```
roslaunch schneider roslaunch_cellule.launch
````
