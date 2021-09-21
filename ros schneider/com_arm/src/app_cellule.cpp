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
#  -> aucune
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



#include "cellule_tp.h"
#include <ros/ros.h>
#include <string>


using namespace std;


int ST1 = 0;
int ST2 = 1;
int ST3 = 2;
int ST4 = 3;
int ST5 = 4;
int ST20 = 5;
int ST21 = 6;
int ST22 = 7;
int ST23 = 8;
int ST24 = 9;
int R1D = 10;
int R2D = 11;
int R11D = 12;
int R12D = 13;
int R1G = 14;
int R2G = 15;
int R11G = 16;
int R12G = 17;
int PI1 = 18;
int PI2 = 19;
int PI7 = 20;
int PI8 = 21;
int D1 = 22;
int D2 = 23;
int D11 = 24;
int D12 = 25;
int V1 = 26;
int V2 = 27;
int V11 = 28;
int V12 = 29;
int PS1 = 50;
int PS2 = 51;
int PS3 = 52;
int PS4 = 53;
int PS5 = 54;
int PS20 = 55;
int PS21 = 56;
int PS22 = 57;
int PS23 = 58;
int PS24 = 59;
int D1D = 60;
int D2D = 61;
int D11D = 62;
int D12D = 63;
int D1G = 64;
int D2G = 65;
int D11G = 66;
int D12G = 67;
int CPI1 = 68;
int CPI2 = 69;
int CPI7 = 70;
int CPI8 = 71;
int CP1 = 72;
int CP2 = 73;
int CP9 = 74;
int CP10 = 75;





vector<vector<int>> bloc1 = { {D1, 1}, {V1, 0}, {D2, 1}, {V2, 0}, {D11, 1}, {V11, 0}, {D12, 1}, {V12, 0}, {R1D, 1}, {R1G, 0}, {R2D, 1}, {R2G, 0},  {R11D, 0}, {R11G, 1}, {R12D, 0}, {R12G, 1} };

vector<vector<int>> bloc2 = { {D1, 0}, {V1, 1}, {D2, 0}, {V2, 1}, {D11, 0}, {V11, 1}, {D12, 0}, {V12, 1} };

vector<vector<int>> bloc3 = { {D1, 1}, {V1, 0}, {D2, 1}, {V2, 0}, {D11, 1}, {V11, 0}, {D12, 1}, {V12, 0}, {R1D, 0}, {R1G, 1}, {R2D, 0}, {R2G, 1},  {R11D, 1}, {R11G, 0}, {R12D, 1}, {R12G, 0} };


int main(int argc, char **argv)
{
	// Creation du noeud ROS
	ros::init(argc, argv, "app_cellule");
	ros::NodeHandle noeud;
	
	
	// Importation des fonctions de contrôle
	Cellule_tp cellule(noeud);
	
	
	
	while (ros::ok())
	{
        cellule.write(bloc1);
		cellule.read();
        while(!cellule.D1D && !cellule.D2D && !cellule.D11G && !cellule.D12G) {cellule.read();}
        cellule.write(bloc2);
        ros::Duration(2).sleep();
        
        cellule.write(bloc3);
		cellule.read();
        while(!cellule.D1G && !cellule.D2G && !cellule.D11D && !cellule.D12D) {cellule.read();}
        cellule.write(bloc2);
        ros::Duration(2).sleep(); 

	}
	
	return 0;
}
