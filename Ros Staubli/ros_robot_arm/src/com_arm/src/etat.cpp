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


#include "etat.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <string>
#include <iostream>


Etat::Etat(ros::NodeHandle noeud, std::string robot)
{	
	sub = noeud.subscribe(robot+"_retour", 1000, &Etat::Callback, this);
}

Etat::~Etat()
{
}

void Etat::Callback(const std_msgs::String::ConstPtr& msg) 
{
	_data = msg->data; //Reception du message
	_pos = 0;
	_digit = "";
	for (std::string::size_type i = 0; i < _data.size(); i++)
	{
		_chiffre = _data[i];
		if (_chiffre == 'X') //Fin de lecture d une valeur
		{
			if (_pos == 0) //Traitement de l identifiant de la trame
			{
				_id = atoi(_digit.c_str()); //Conversion de type : char -> int
				_digit = "";
				_pos ++;
			}
			else //Traitement des donnees de la trame en fonction de son identifiant
			{
				if (_id == 5) //Trame de retour d etat du robot
				{
					switch (_pos)
					{
						case 1:
							_isPowered = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 2:
							_isCalibrated = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 3:
							_workingMode = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 4:
							_esStatus = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 5:
							_moniteurSpeed = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 6:
							_shoulder = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 7:
							_elbow = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 8:
							_wrist = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 9:
							_isSettled = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 10:
							_flag = atoi(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
					}
				}
				else if (_id == 11) //Trame de retour des positions articulaires du robot
				{
					switch (_pos)
					{
						case 1:
							_j1 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 2:
							_j2 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 3:
							_j3 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 4:
							_j4 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 5:
							_j5 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 6:
							_j6 = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
					}
				}
				else if (_id == 121) //Trame de retour des positions cartesiennes de l outil
				{
					switch (_pos)
					{
						case 1:
							_x = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 2:
							_y = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 3:
							_z = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 4:
							_rx = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 5:
							_ry = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
						case 6:
							_rz = atof(_digit.c_str());
							_digit = "";
							_pos ++;
							break;
					}
				}
			}
		}
		else if (_chiffre == 'F') //Fin de lecture d une trame
		{
			_pos = 0;
		}
		else if (_chiffre != ' ') //Concatenation des digits pour traduire la valeur
		{
			_digit += _chiffre;
		}
	}
}
