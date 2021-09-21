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


#ifndef RECEPT_CELLULE_H
#define RECEPT_CELLULE_H

#include <ros/ros.h>
#include <com_arm/Retour_navette.h>
using namespace std;

class Recept_cellule
{

private:
	ros::Subscriber sub;
	
public:
	Recept_cellule(ros::NodeHandle noeud);
	~Recept_cellule();
	void Callback(const com_arm::Retour_navette::ConstPtr& msg);
	bool ST1;
    bool ST2;
    bool ST3;
    bool ST4;
    bool ST5;
    bool ST20;
    bool ST21;
    bool ST22;
    bool ST23;
    bool ST24;
    bool R1D;
    bool R2D;
    bool R11D;
    bool R12D;
    bool R1G;
    bool R2G;
    bool R11G;
    bool R12G;
    bool PI1;
    bool PI2;
    bool PI7;
    bool PI8;
    bool D1;
    bool D2;
    bool D11;
    bool D12;
    bool V1;
    bool V2;
    bool V11;
    bool V12;
    bool PS1;
    bool PS2;
    bool PS3;
    bool PS4;
    bool PS5;
    bool PS20;
    bool PS21;
    bool PS22;
    bool PS23;
    bool PS24;
    bool D1D;
    bool D2D;
    bool D11D;
    bool D12D;
    bool D1G;
    bool D2G;
    bool D11G;
    bool D12G;
    bool CPI1;
    bool CPI2;
    bool CPI7;
    bool CPI8;
    bool CP1;
    bool CP2;
    bool CP9;
    bool CP10;
	
	
};


#endif