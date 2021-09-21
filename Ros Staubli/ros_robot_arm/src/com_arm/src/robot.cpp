/*
################
#### Entete ####
################
#
# This project has received funding from the European Union s Horizon 2020 research and innovation programme under grant agreement No 732287.
# The RIO project starts in Jan 2020 and ends in Dec 2020.
#
# Description du programme
#  -> Programme robot : initialise et cree le noeud robot puis publie sur le topic correspondant les valeurs des variables de l objet etat de la classe Etat
#
# Entree
#  -> aucune
#
# Sortie 
#  -> message du topic /state de type ros_arm/State
#  -> message du topic /cart de type ros_arm/Cart
#  -> message du topic /joint_states de type sensor_msgs/JointState
#
# Historique
#  -> Creation: 29/09/2020, AIP PRIMECA Occitanie, Nathan MORET
#
######################
#### Fin d entete ####
######################
*/


#include "etat.h"
#include <ros/ros.h>
#include <com_arm/Cart.h>
#include <com_arm/State.h>
#include <sensor_msgs/JointState.h>
#include <math.h>
#include <iostream>
#include <string>
using namespace std;

#define PI 3.14159265358979323846

int main(int argc, char **argv)
{	
	string robot;
	cin>>robot;
	//Initialisation du noeud ROBOT
	ros::init(argc, argv, robot+"_robot");
	ros::NodeHandle noeud;

	//Initialisation des publishers
	ros::Publisher robot_publisher_state;
	robot_publisher_state = noeud.advertise<com_arm::State>("/"+robot+"_state", 1);
	
	ros::Publisher robot_publisher_cart;
	robot_publisher_cart = noeud.advertise<com_arm::Cart>("/"+robot+"_cart", 1);

	ros::Publisher robot_publisher_joint;
	robot_publisher_joint = noeud.advertise<sensor_msgs::JointState>("/"+robot+"_joint_states", 1);

	
	//Creation des messages
	com_arm::Cart msg1;
	
	com_arm::State msg3;

	sensor_msgs::JointState msg2;
	

	//Creation de l objet etat de la classe Etat
	Etat etat(noeud, robot);

	
	
	while (ros::ok())
	{
		//Mise a jour et envoie du message des coordonnees cartesiennes
		msg1.x = etat._x;
		msg1.y = etat._y;
		msg1.z = etat._z;
		msg1.rx = etat._rx;
		msg1.ry = etat._ry;
		msg1.rz = etat._rz;
		robot_publisher_cart.publish(msg1);
		

		//Mise a jour et envoie du message des coordonnees articulaires
		msg2.name.resize(6);
		msg2.name[0] = "joint1";
    	msg2.name[1] = "joint2";
   		msg2.name[2] = "joint3";
    	msg2.name[3] = "joint4";
   		msg2.name[4] = "joint5";
   		msg2.name[5] = "joint6";
		msg2.position.resize(6);
		msg2.position[0] = etat._j1*PI/180;
		msg2.position[1] = etat._j2*PI/180;
		msg2.position[2] = etat._j3*PI/180;
		msg2.position[3] = etat._j4*PI/180;
		msg2.position[4] = etat._j5*PI/180;
		msg2.position[5] = etat._j6*PI/180;
		robot_publisher_joint.publish(msg2);
		

		//Mise a jour et envoie du message d etat
		msg3.isPowered = etat._isPowered;
		msg3.isCalibrated = etat._isCalibrated;
		msg3.workingMode = etat._workingMode;
		msg3.esStatus = etat._esStatus;
		msg3.moniteurSpeed = etat._moniteurSpeed;
		msg3.shoulder = etat._shoulder;
		msg3.elbow = etat._elbow;
		msg3.wrist = etat._wrist;
		msg3.isSettled = etat._isSettled;
		msg3.flag = etat._flag;
		robot_publisher_state.publish(msg3);


		ros::spinOnce();
	}
	
	return 0;
}
