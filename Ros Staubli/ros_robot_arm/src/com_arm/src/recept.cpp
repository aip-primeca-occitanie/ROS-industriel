/*
################
#### Entete ####
################
#
# This project has received funding from the European Union s Horizon 2020 research and innovation programme under grant agreement No 732287.
# The RIO project starts in Jan 2020 and ends in Dec 2020.
#
# Description du programme
#  -> Creation de la classe Recept : permet de souscrire à l un des trois topics publies par le noeud ROBOT et met a jour ses variables publiques 
#  (qui sont les memes que la classe Etat) avec les informations recues
#
# Entree
#  -> message du topic /state de type ros_arm/State
#  -> message du topic /cart de type ros_arm/Cart
#  -> message du topic /joint_states de type sensor_msgs/JointState
#
# Sortie 
#  -> aucune
#
# Historique
#  -> Creation: 29/09/2020, AIP PRIMECA Occitanie, Nathan MORET
#
######################
#### Fin d entete ####
######################
*/


#include "recept.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <vector>
#include <string>
#include <iostream>
#include <com_arm/State.h>
#include <com_arm/Cart.h>
#include <sensor_msgs/JointState.h>
#include <moveit_msgs/ExecuteTrajectoryActionGoal.h>
#include <trajectory_msgs/JointTrajectory.h>
#include <iostream>
using namespace std;

//Constructeur de l objet de la classe Recept, l objet souscrit a un seul tipoc en fonction de son arguement
Recept::Recept(ros::NodeHandle noeud, std::string robot, std::string topic)
{
	if (topic == "/state")
	{
		sub = noeud.subscribe("/"+robot+"_state", 1, &Recept::stateCallback, this);
	}
	else if (topic == "/cart")
	{
		sub = noeud.subscribe("/com_arm/"+robot+"_cart", 1, &Recept::cartCallback, this);
	}
	else if (topic == "/joint")
	{
		sub = noeud.subscribe("/"+robot+"_joint_states", 1, &Recept::jointCallback, this);
	}
	else if (topic == "/jointorder") //Souscription au topic utilise pour l application de plannification de mouvement avec Moveit
	{
		sub = noeud.subscribe("/execute_trajectory/goal", 1, &Recept::jointorder0Callback, this);
	}
}

Recept::~Recept()
{
}

//Pour le topic /state
void Recept::stateCallback(const com_arm::State::ConstPtr& msg) 
{
	_isPowered = msg->isPowered;
	_isCalibrated = msg->isCalibrated;
	_workingMode = msg->workingMode;
	_esStatus = msg->esStatus;
	_moniteurSpeed = msg->moniteurSpeed;
	_shoulder = msg->shoulder;
	_elbow = msg->elbow;
	_wrist = msg->wrist;
	_isSettled = msg->isSettled;
	
}

//Pour le topic /cart
void Recept::cartCallback(const com_arm::Cart::ConstPtr& msg) 
{
	_x = msg->x;
	_y = msg->y;
	_z = msg->z;
	_rx = msg->rx;
	_ry = msg->ry;
	_rz = msg->rz;
	
}

//Pour le topic /joint_states
void Recept::jointCallback(const sensor_msgs::JointState::ConstPtr& msg) 
{
	_j1 = msg->position[0];
	_j2 = msg->position[1];
	_j3 = msg->position[2];
	_j4 = msg->position[3];
	_j5 = msg->position[4];
	_j6 = msg->position[5];
	
}

//Pour le topic /execute_trajectory/goal (plannification de mouvement avec Moveit)
void Recept::jointorder0Callback(const moveit_msgs::ExecuteTrajectoryActionGoal::ConstPtr& msg)
{	
	//Creation d un tableau a deux dimensions pour stocker les positions intermediaire du mouvment planifie par Moveit
	size = msg->goal.trajectory.joint_trajectory.points.size();
	if (size > 0) {
		_pos.resize(size);
		cout << size << ' ';
		for (int i=0; i<size; i=i+1){
			_pos[i].resize(6);
			_pos[i] = msg->goal.trajectory.joint_trajectory.points[i].positions;
		}
	}
}

//Fonction de waitEndMove pour une utilisation du cote ROS
void Recept::waitEndMove()
{	
	while (_isSettled == 1 && ros::ok())
	{	
		ros::spinOnce();
	}
	while (_isSettled == 0 && ros::ok())
	{	
		ros::spinOnce();
	}
	
}
