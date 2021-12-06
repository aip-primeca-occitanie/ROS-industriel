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


#include "control.h"
#include "recept.h"
#include "control_cellule.h"
#include "recept_cellule.h"
#include "cognex.h"
#include <ros/ros.h>
#include <string>
#include <iostream>
#include <com_arm/State.h>
#include <com_arm/Retour_navette.h>
#include <chrono>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <thread> 
using namespace std;

sig_atomic_t volatile request_shutdown = 0;
Control* p_control;

void my_handler(int sig)
{
	request_shutdown = 1;
	p_control->stop();
	exit(0);
}

int main(int argc, char **argv)
{
	// Creation du noeud ROS
	ros::init(argc, argv, "pick_and_place", ros::init_options::NoSigintHandler);
	ros::NodeHandle noeud;
	
	signal (SIGINT,my_handler);
	
	// Importation des fonctions de contrôle
	Control control(noeud, "staubli");
	p_control= &control;

	Cognex cognex_staubli_calib(noeud, "staubli", "/calib");
	Cognex cognex_staubli_objet(noeud, "staubli", "/objet");
	Control_cellule control_cel(noeud);
	
	//////////////////////////////////////////////////////////
	
	/////////////////
	// Subscriber //
	////////////////
	
	std::string s = "/state";
	Recept state(noeud, "staubli", s);
	Recept_cellule recept_cel(noeud);
	
	//std::string j = "/joint";
	//Recept joint(noeud, j);
	
	//std::string c = "/cart";
	//Recept joint(noeud, c);
	
	///////////////////////////////////////////////////////////
	
	//////////////////
	// APPLICATION //staubli
	/////////////////


	///****/// Joint  { j1, j2, j3, j4, j5, j6 }
	
	double prisej[6] = { -105.11, 8.47, 98.25, -1.47, 70.89, 167.72  };

	///****/// Cart  { x, y, z, rx, ry, rz }
	
    double init[6] = { -33.06, -440.2, 37.68, 90.48, 2.51, -88.5  };
	double init1[6] = { -33.06, -440.2, -57.73, 90.48, 2.51, -88.5 };
	double init2[6] = { -241.53, -440.2, -57.73, 90.48, 2.51, -88.5 };
	double init3[6] = { -241.53, -579.1, -57.73, 90.48, 2.51, -88.5 };
    double init4[6] = { -33.06, -579.1, -57.73, 90.48, 2.51, -88.5 };

	
	double prisec[6] = { -47.6, -346.86, 15.62, -1.95, -178.03, -87.66  };

	double transi[6] = { 350.04, 6.45, 15.61, 178.36, 2.22, -6.47  };
	double appro[6] = { 418.61, 10.32, -303.96, 179.99, 2.15, -3.96  };
	double de[6] = { 418.59, 10.31, -342.93, 179.99, 2.15, -3.96  };
    
	

	///****/// Speed  { accel, vel, decel, tvel, rvel, blend, leave, reach }

	int fast[8] = { 100, 100, 100, 9999, 9999, 1, 100, 100 };
	int slow[8] = { 50, 50, 100, 9999, 9999, 0, 0, 0 };
	int fastb1[8] = { 100, 100, 500, 500, 100, 1, 5, 5 };
	int fastb2[8] = { 100, 100, 2000, 2000, 100, 1, 100, 100 };

	
	vector<vector<string>> tab_init_a = { {"A1","D"} , {"A2","D"} , {"A11","G"} , {"A12","G"} };
	vector<vector<string>> tab_init_a2 = { {"A1","G"} , {"A2","G"} , {"A11","D"} , {"A12","D"} } ;
	vector<vector<string>> tab_init_s = { {"ST1","GO"},{"ST2","STOP"},{"ST3","GO"},{"ST20","GO"},{"ST23","GO"},{"ST5","GO"} };
	vector<vector<string>> tab_all_s = { {"ST1","STOP"},{"ST2","STOP"},{"ST3","STOP"},{"ST20","STOP"},{"ST23","STOP"},{"ST5","STOP"} };
	vector<vector<string>> tab_all_go = { {"ST1","GO"},{"ST2","GO"},{"ST3","GO"},{"ST20","GO"},{"ST23","GO"},{"ST5","GO"} };
	vector<vector<string>> tab_s3 = { {"ST3","STOP"} };
	vector<vector<string>> tab_g3 = { {"ST3","GO"} };
	vector<vector<string>> tab_g2 = { {"ST2","GO"} };
	vector<vector<string>> tab_to = { {"PI2","O"} };
	vector<vector<string>> tab_tf = { {"PI2","F"} };

	

	control_cel.aiguillage(tab_init_a);
	control_cel.taquet(tab_tf);
	control_cel.stop(tab_init_s);

	

	
	control.paramSpeed(slow);
	control.moveCartJ(transi);
	//control.moveCartJ(prisec);
    
	
	while (!request_shutdown)
	{	
		control.doTool("open"); 
		control.moveCartJ(prisec);
		control.moveCartJ(transi);
		control.moveCartJ(appro);
		control.moveCartL(de);
		control.doTool("close");
		control.moveCartL(appro);
		control.moveCartJ(transi);
		control.moveCartJ(prisec);
		control.moveCartJ(init); 
        
		control.moveCartL(init1);
		while (cognex_staubli_calib._point0 != true) ros::spinOnce();
		control.moveCartL(init2);
        while (cognex_staubli_calib._point1 != true) ros::spinOnce();
		control.moveCartL(init3);
        while (cognex_staubli_calib._point2 != true) ros::spinOnce();
        control.moveCartL(init4);
        while (cognex_staubli_calib._point3 != true) ros::spinOnce();
		control.moveCartJ(init);
		control.moveCartJ(prisec);
		control.moveCartJ(transi);
		control.moveCartJ(appro);
		control.moveCartL(de);
		control.doTool("open");
		control.moveCartL(appro);
		control.moveCartJ(transi);
		control.moveCartJ(prisec);
		
		control_cel.stop(tab_g2);

		while (!request_shutdown)
		{	
			while (!recept_cel.PS1){ros::spinOnce();}
			control_cel.stop(tab_s3);
			while (!recept_cel.PS3){ros::spinOnce();}
			control_cel.taquet(tab_to);
			while (!recept_cel.CPI2){ros::spinOnce();}

			while (cognex_staubli_objet._go != true){
				cognex_staubli_objet.detection();
				ros::spinOnce();
			}

			control.doTool("open"); 
			double test[6] = { cognex_staubli_objet._x, cognex_staubli_objet._y, -37.68, -1.95, -178.03, -87.66 };
			control.moveCartL(test);
			double test2[6] = { cognex_staubli_objet._x, cognex_staubli_objet._y, -90, -1.95, -178.03, -87.66 };
			control.moveCartL(test2);
			control.doTool("close"); 
			control.moveCartL(test);
			control.moveCartL(test2);
			control.doTool("open"); 
			control.moveCartL(test);
			control.doTool("close"); 
			control.moveCartJ(prisec);
			control_cel.taquet(tab_tf);
			control_cel.stop(tab_g3);
			while (!recept_cel.PS5){ros::spinOnce();}

			while (cognex_staubli_objet._go == true){
				cognex_staubli_objet.detection();
				ros::spinOnce();
			}
			//std::this_thread::sleep_for (std::chrono::milliseconds(1000));
			ros::spinOnce();
		}

		

	


		ros::spinOnce();
		
	}
	return 0;
}


