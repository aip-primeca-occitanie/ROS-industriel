# ros Staubli
Driver pour Robot staubli (ici RX60)

## A propos 
Driver pour Staubli (explication, et bibliothèque pour robot staubli)

## Comment compiler ? 

Il est necessaire d'installer les dépendances suivantes : 


```bash
sudo apt install ros-noetic-moveit
sudo apt install libmodbus-dev
```

# change to the root of the Catkin workspace
cd ~/ros_robot_arm/

# compilation de votre environnement de travail
catkin_make
```
## Activation de votre workspace
si vous avez plusieurs workspaces :
```bash
source ~/catkin_ws/devel/setup.bash
```
si vous n'en n'avez qu'un:
```bash
echo "source  ~/catkin_ws/devel/setup.bash"  >>  ~/.bashrc 
source ~/.bashrc 
```
