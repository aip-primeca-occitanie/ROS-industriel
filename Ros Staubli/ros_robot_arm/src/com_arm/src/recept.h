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


#ifndef RECEPT_H
#define RECEPT_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <vector>
#include <string>
#include <com_arm/State.h>
#include <com_arm/Cart.h>
#include <sensor_msgs/JointState.h>
#include <moveit_msgs/ExecuteTrajectoryActionGoal.h>
#include <trajectory_msgs/JointTrajectory.h>
using namespace std;

class Recept
{

private:
	ros::Subscriber sub;
	std::string _state = "/state";
	std::string _cart = "/cart";
	std::string _joint = "/joint";
	std::string _jointorder = "/jointorder";
	
public:
	Recept(ros::NodeHandle noeud, std::string robot, std::string topic);
	~Recept();
	void stateCallback(const com_arm::State::ConstPtr& msg);
	void cartCallback(const com_arm::Cart::ConstPtr& msg);
	void jointCallback(const sensor_msgs::JointState::ConstPtr& msg);
	void jointorder0Callback(const moveit_msgs::ExecuteTrajectoryActionGoal::ConstPtr& msg);
	void waitEndMove();
	double _x;
	double _y;
	double _z;
	double _rx;
	double _ry;
	double _rz;
	double _j1;
	double _j2;
	double _j3;
	double _j4;
	double _j5;
	double _j6;
	vector<vector<double> > _pos;
	int size;
	int _isPowered;
	int _isCalibrated;
	int _workingMode;
	int _esStatus;
	int _moniteurSpeed;
	int _shoulder;
	int _elbow;
	int _wrist;
	int _isSettled;
	
	
};

#endif
