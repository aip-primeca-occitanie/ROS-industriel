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


#include "recept_cellule.h"
#include <ros/ros.h>
#include <com_arm/Retour_navette.h>

using namespace std;

//Constructeur de l objet de la classe Recept, l objet souscrit a un seul tipoc en fonction de son arguement
Recept_cellule::Recept_cellule(ros::NodeHandle noeud)
{
	sub = noeud.subscribe("/retour_navette", 1, &Recept_cellule::Callback, this);	
}

Recept_cellule::~Recept_cellule()
{
}

//Pour le topic /state
void Recept_cellule::Callback(const com_arm::Retour_navette::ConstPtr& msg) 
{
	ST1 = msg->ST1;
	ST2 = msg->ST2;
    ST3 = msg->ST3;
    ST4 = msg->ST4;
    ST5 = msg->ST5;
    ST20 = msg->ST20;
    ST21 = msg->ST21;
    ST22 = msg->ST22;
    ST23 = msg->ST23;
    ST24 = msg->ST24;
    R1D = msg->R1D;
    R2D = msg->R2D;
    R11D = msg->R11D;
    R12D = msg->R12D;
    R1G = msg->R1G;
    R2G = msg->R2G;
    R11G = msg->R11G;
    R12G = msg->R12G;
    PI1 = msg->PI1;
    PI2 = msg->PI2;
    PI7 = msg->PI7;
    PI8 = msg->PI8;
    D1 = msg->D1;
    D2 = msg->D2;
    D11 = msg->D11;
    D12 = msg->D12;
    V1 = msg->V1;
    V2 = msg->V2;
    V11 = msg->V11;
    V12 = msg->V12;
    PS1 = msg->PS1;
    PS2 = msg->PS2;
    PS3 = msg->PS3;
    PS4 = msg->PS4;
    PS5 = msg->PS5;
    PS20 = msg->PS20;
    PS21 = msg->PS21;
    PS22 = msg->PS22;
    PS23 = msg->PS23;
    PS24 = msg->PS24;
    D1D = msg->D1D;
    D2D = msg->D2D;
    D11D = msg->D11D;
    D12D = msg->D12D;
    D1G = msg->D1G;
    D2G = msg->D2G;
    D11G = msg->D11G;
    D12G = msg->D12G;
    CPI1 = msg->CPI1;
    CPI2 = msg->CPI2;
    CPI7 = msg->CPI7;
    CPI8 = msg->CPI8;
    CP1 = msg->CP1;
    CP2 = msg->CP2;
    CP9 = msg->CP9;
    CP10 = msg->CP10;

}


	
