# projet-ROS_industriel => communication avec une caméra cognex

Ce projet a été développé sous <b>ubuntu 18.04</b>, avec <b>ros melodic</b> (python 2.7 et gcc 11).

Pour piloter une caméra cognex , les étapes sont necessaire sur la caméra. Le fichier est necessaire pour faire coincider les informations que l'on fournit au telnet. Il permet de faire le changement de base entre le robot et la caméra afin de faire la détection de pièce. La connexion au serveur ros va permettre de dire au robot d'aller chercher les objets sélectionner. 
 

Selectionner le ficher et le mettre en service dans la caméra Driver_ros.job à mettre sur votre caméra

Le programme fonctionne de la façon suivante : 

1. Lancer le job sur votre caméra	
2. Le pilotage de la caméra se fait via le script python ihm_cognex.py
3. Il faut pour le moment rentrer dans l'adresse de votre camera,son nom utilisateur son mot de passe
4. Nos deux caméras ont les adresse suivantes : 192.168.1.99 et 192.168.0.98
5. Les informations de connexion sont envoyé via la fonction connexion, les mots de passe cognex sans modification sont <b>admin</b> et un password vide
6. Le cheminement du programme est le suivant (exemple avec la caméra kuka) : 
	6.1 choix de la cognex (de l'adresse ip de la caméra)
	6.2 def kuka
	6.3 init de ROS : publication : calib et objet); souscription cart et detect	
	6.4 information de connexion 	
	6.5 effacement de l'image (précharger)
	6.6 calibration choissisait de 1 à 4 points afin de faire le changement de base 
	6.7 Cliquer sur Calibration Ok
	6.7 selectionner les options afin de détecter vos objets.  

Si vous avez interconnecter votre robot (kuka ou staubli) avec les drivers ros fournit sur notre github, vous allez pouvoir le piloter via les publications cart (donnée cartesienne). 

## Le dossier est prêt à la compilation

Afin d'afficher les informations des programmes, il est necessaire de mettre xterm sur votre environnement de développement :
```bash
 sudo apt-get install xterm
```
Création de votre de dossier de développement : 
```bash
# change to the src folder of the Catkin workspace
cd ~/ros_cognex/src (ou le dossier de votre choix)


# change to the root of the Catkin workspace
cd ~/ros_cognex/

# build the workspace
catkin_make
```

## Activation de votre dossier de travail

If you are working with multiple workspaces activate the new one with :

```bash
source ~/catkin_ws/devel/setup.bash
```

If you are working with one workspace only, you can use:

```bash
echo "source  ~/ros_cognex/devel/setup.bash"  >>  ~/.bashrc 
source ~/.bashrc 
```

## Enfin vous pourrez lancer votre roslaunch

```
roslaunch cognex cognex.launch
````

