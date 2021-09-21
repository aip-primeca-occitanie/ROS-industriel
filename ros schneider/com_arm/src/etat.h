/*
################
#### Entete ####
################
#
# This project has received funding from the European Union s Horizon 2020 research and innovation programme under grant agreement No 732287.
# The RIO project starts in Jan 2020 and ends in Dec 2020.
#
# Description du programme
#  -> Creation de la classe Etat : souscrit au topic /retour puis receptionne, traduit et met a jour les informations du robot dans des variables publiques via son unique fonction callback()
#
# Entree
#  -> message du topic /retour de type std_msgs/String
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


#ifndef ETAT_H
#define ETAT_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <string>

class Etat
{

private:
	ros::Subscriber sub;
	std_msgs::String msg;
	std::string _data;
	std::string _digit;
	int _pos;
	int _id;
	char _chiffre;
	
	
	
public:
	Etat(ros::NodeHandle noeud, std::string robot);
	~Etat();
	void Callback(const std_msgs::String::ConstPtr& msg);
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
	int _isPowered;
	int _isCalibrated;
	int _workingMode;
	int _esStatus;
	int _moniteurSpeed;
	int _shoulder;
	int _elbow;
	int _wrist;
	int _isSettled;
	int _flag;
	
};

#endif
