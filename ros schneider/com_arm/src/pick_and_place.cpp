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
#include <ros/ros.h>
#include <string>
#include <iostream>
#include <com_arm/State.h>
#include <com_arm/Retour_navette.h>
#include <chrono>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>

sig_atomic_t volatile request_shutdown = 0;
Control* p_control;
Control* p_control_kuka;

void my_handler(int sig)
{
	request_shutdown = 1;
	p_control->stop();
	p_control_kuka->stop();
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
	p_control = &control;
	Control control_kuka(noeud, "kuka");
	p_control_kuka = &control_kuka;
	Control_cellule control_cel(noeud);
	
	//////////////////////////////////////////////////////////
	
	/////////////////
	// Subscriber //
	////////////////
	
	std::string s = "/state";
	Recept state(noeud, "staubli", s);
	Recept state_kuka(noeud, "kuka", s);
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
	
	

	///****/// Cart  { x, y, z, rx, ry, rz }
	
	double init1[6] = { -32, -538, 494, 105.41, 69, -144 };
	double init2[6] = { 308, -220, 330, 107, 66.5, -155.26 };
	double init3[6] = { 429, -329.5, 820, 104.3, 66.24, -168.6 };
	
	
	double init[6] = { 397.37, 295.5, 67.48, 0, 155, 45 };
	double init11[6] = { 397.37, -200.5, 67.48, 0, 155, 45 };
	double init22[6] = { 397.37, 20.5, 200.48, 0, 155, 45 };
	/*
	double prise1[6] = { 444.11, 63.99, -85.97, -0.14, 178.53, 1.26 };
	double appro1[6] = { 443.39, 63.99, -56.3, -0.14, 178.54, 1.26 };
	double posi1[6] = { 443.38, 63.98, 65.83, -0.14, 178.54, 1.26 };
	double prise2[6] = { 504.88, 63.98, -85.97, -0.14, 178.53, 1.26 };
	double appro2[6] = { 504.86, 63.98, -56.27, -0.14, 178.53, 1.25 };
	double posi2[6] = { 509.76, 63.95, 65.83, -0.15, 178.55, 1.26 };
	double prise3[6] = { 503.93, -72.75, -85.97, -0.15, 178.55, 1.26 };
	double appro3[6] = { 503.92, -72.75, -61.78, -0.15, 178.56, 1.26 };
	double posi3[6] = { 503.91, -72.74, 65.83, -0.14, 178.56, 1.26 };
	double prise4[6] = { 442.32, -100.11, -85.97, -0.15, 178.57, 1.26 };
	double appro4[6] = { 442.3, -100.11, -64.12, -0.15, 178.57, 1.26 };
	double posi4[6] = { 442.29, -100.1, 65.83, -0.14, 178.58, 1.26 };

	double transi[6] = { 185.77, -406.33, 65.83, -1.44, 179.73, 74.93 };
	double stock_posi[6] = { -386.56, -224.05, -65.83, 179.58, -1.41, -20.6 };
	double stock_appro_1[6] = { -386.56, -224.05, -302.81, 179.58, -1.41, -20.6 };
	double stock_prise_1[6] = { -386.56, -224.05, -312.81, 179.58, -1.41, -20.6 };
	double stock_appro_2[6] = { -386.56, -224.05, -255.81, 179.58, -1.41, -20.6 };
	double stock_prise_2[6] = { -386.56, -224.05, -265.81, 179.58, -1.41, -20.6 };

	double stock_appro_3[6] = { -386.56, -224.05, -208.81, 179.58, -1.41, -20.6 };
	double stock_prise_3[6] = { -386.56, -224.05, -218.81, 179.58, -1.41, -20.6 };

	double stock_appro_4[6] = { -386.56, -224.05, -161.81, 179.58, -1.41, -20.6 };
	double stock_prise_4[6] = { -386.56, -224.05, -171.81, 179.58, -1.41, -20.6 };
	*/

	///****/// Speed  { accel, vel, decel, tvel, rvel, blend, leave, reach }

	int fast[8] = { 100, 100, 100, 9999, 9999, 1, 100, 100 };
	int slow[8] = { 50, 50, 500, 500, 100, 0, 0, 0 };
	int fastb1[8] = { 100, 100, 500, 500, 100, 1, 5, 5 };
	int fastb2[8] = { 100, 100, 2000, 2000, 100, 1, 100, 100 };
	
	/*
	//vector<vector<string>> tab_a1 = { {"A1","G"} , {"A2","G"} , {"A11","D"} , {"A12","D"} } ;
	vector<vector<string>> tab_a1 = { {"A1","D"} , {"A2","D"} , {"A11","G"} , {"A12","G"} } ;
    //vector<vector<string>> tab_a2 = { {"A1","G"},{"A2","G"} };
	vector<vector<string>> tab_a2 = { {"A11","G"},{"A12","G"} };
    //vector<vector<string>> tab_a3 = { {"A1","D"},{"A2","D"} };
	vector<vector<string>> tab_a3 = { {"A11","D"},{"A12","D"} };
	//vector<vector<string>> tab_s1 = { {"ST21","STOP"},{"ST20","GO"},{"ST24","GO"},{"ST4","GO"},{"ST22","GO"},{"ST1","GO"}  };
	vector<vector<string>> tab_s1 = { {"ST3","STOP"},{"ST2","GO"},{"ST5","GO"},{"ST23","GO"},{"ST20","GO"},{"ST1","GO"}  };
    //vector<vector<string>> tab_s2 = { {"ST21","GO"},{"ST24","STOP"} };
	vector<vector<string>> tab_s2 = { {"ST3","GO"},{"ST5","STOP"} };
	//vector<vector<string>> tab_s3 = { {"ST1","STOP"},{"ST24","GO"} };
	vector<vector<string>> tab_s3 = { {"ST20","STOP"},{"ST5","GO"} };
	//vector<vector<string>> tab_s4 = { {"ST1","GO"} };
	vector<vector<string>> tab_s4 = { {"ST20","GO"} };
	//vector<vector<string>> tab_t1 = { {"PI7","O"} };
	vector<vector<string>> tab_t1 = { {"PI2","O"} };
	//vector<vector<string>> tab_t2 = { {"PI7","F"} };
	vector<vector<string>> tab_t2 = { {"PI2","F"} };
	*/
	vector<vector<string>> tab_a1 = { {"A1","D"} , {"A2","D"} , {"A11","D"} , {"A12","D"} } ;
	vector<vector<string>> tab_s1 = { {"ST3","STOP"},{"ST21","STOP"},{"ST2","GO"},{"ST5","GO"},{"ST22","GO"},{"ST20","GO"},{"ST1","GO"},{"ST24","GO"}  };
	vector<vector<string>> tab_s2 = { {"ST3","GO"} };
	vector<vector<string>> tab_s3 = { {"ST21","GO"}};
	vector<vector<string>> tab_t11 = { {"PI7","O"} };
	vector<vector<string>> tab_t1 = { {"PI2","O"} };
	vector<vector<string>> tab_t22 = { {"PI7","F"} };
	vector<vector<string>> tab_t2 = { {"PI2","F"} };

    control_cel.aiguillage(tab_a1);
	control_cel.stop(tab_s1);
	control_cel.taquet(tab_t2);
	control_cel.taquet(tab_t22);

	

	control.doTool("open");
	control.paramSpeed(fast);
	control_kuka.paramSpeed(fastb2);
	control.moveCartL(init);
	
	while (!request_shutdown)
	{	
		

		if (recept_cel.PS3){
			control_cel.taquet(tab_t1);


			control.moveCartL(init11);

			control_kuka.moveCartL(init2);

			control.moveCartL(init22);

			control_kuka.moveCartL(init3);

			control.moveCartL(init);
			
			control_kuka.moveCartL(init1);


			while (state._isSettled == 0){ros::spinOnce();}
			control_cel.taquet(tab_t2);
			control_cel.stop(tab_s2);
			while (recept_cel.PS3){ros::spinOnce();}
			control_cel.stop(tab_s1);
		}

		
		if (recept_cel.PS21){
			control_cel.taquet(tab_t11);


			control_kuka.moveCartL(init2);

			control.moveCartL(init11);

			control_kuka.moveCartL(init3);

			control.moveCartL(init22);

			control_kuka.moveCartL(init1);

			control.moveCartL(init);


			while (state_kuka._isSettled == 0){ros::spinOnce();}
			control_cel.taquet(tab_t22);
			control_cel.stop(tab_s3);
			while (recept_cel.PS21){ros::spinOnce();}
			control_cel.stop(tab_s1);
		}

		ros::spinOnce();
		

		/*
		if (recept_cel.PS5){
			control_cel.stop(tab_s3);
			control_cel.aiguillage(tab_a2);
			control_cel.stop(tab_s4);
			while (not recept_cel.PS1){ros::spinOnce();}
			control_cel.aiguillage(tab_a3);
			control_cel.stop(tab_s1);
		}

		if (recept_cel.PS21){
			control_cel.taquet(tab_t1);
			control.moveCartL(init2);
			control.moveCartL(init3);
			control.moveCartL(init1);
			while (state._isSettled == 0){ros::spinOnce();}
			control_cel.taquet(tab_t2);
			control_cel.stop(tab_s2);
			while (recept_cel.PS21){ros::spinOnce();}
		}
		if (recept_cel.PS24){
			control_cel.stop(tab_s3);
			control_cel.aiguillage(tab_a2);
			control_cel.stop(tab_s4);
			while (not recept_cel.PS20){ros::spinOnce();}
			control_cel.aiguillage(tab_a3);
			control_cel.stop(tab_s1);
		}
		ros::spinOnce();
		
		control.moveCartJ(posi1);
		control.moveCartL(appro1);
		control.paramSpeed(slow);
		control.moveCartL(prise1);
		control.doTool("close");
		control.moveCartL(appro1);
		control.paramSpeed(fast);
		control.moveCartL(posi1);
		
		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_1);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_1);
		control.doTool("open");
		control.moveCartL(stock_appro_1);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);
		
		control.moveCartC(posi2, transi);
		control.moveCartL(appro2);
		control.paramSpeed(slow);
		control.moveCartL(prise2);
		control.doTool("close");
		control.moveCartL(appro2);
		control.paramSpeed(fast);
		control.moveCartL(posi2);

		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_2);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_2);
		control.doTool("open");
		control.moveCartL(stock_appro_2);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi3, transi);
		control.moveCartL(appro3);
		control.paramSpeed(slow);
		control.moveCartL(prise3);
		control.doTool("close");
		control.moveCartL(appro3);
		control.paramSpeed(fast);
		control.moveCartL(posi3);

		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_3);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_3);
		control.doTool("open");
		control.moveCartL(stock_appro_3);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi4, transi);
		control.moveCartL(appro4);
		control.paramSpeed(slow);
		control.moveCartL(prise4);
		control.doTool("close");
		control.moveCartL(appro4);
		control.paramSpeed(fast);
		control.moveCartL(posi4);

		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_4);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_4);
		control.doTool("open");
		control.moveCartL(stock_appro_4);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartL(stock_appro_4);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_4);
		control.doTool("close");
		control.moveCartL(stock_appro_4);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi2, transi);
		control.moveCartL(appro2);
		control.paramSpeed(slow);
		control.moveCartL(prise2);
		control.doTool("open");
		control.moveCartL(appro2);
		control.paramSpeed(fast);
		control.moveCartL(posi2);		
		
		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_3);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_3);
		control.doTool("close");
		control.moveCartL(stock_appro_3);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi1, transi);
		control.moveCartL(appro1);
		control.paramSpeed(slow);
		control.moveCartL(prise1);
		control.doTool("open");
		control.moveCartL(appro1);
		control.paramSpeed(fast);
		control.moveCartL(posi1);
		
		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_2);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_2);
		control.doTool("close");
		control.moveCartL(stock_appro_2);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi4, transi);
		control.moveCartL(appro4);
		control.paramSpeed(slow);
		control.moveCartL(prise4);
		control.doTool("open");
		control.moveCartL(appro4);
		control.paramSpeed(fast);
		control.moveCartL(posi4);

		control.moveCartC(stock_posi, transi);
		control.moveCartL(stock_appro_1);
		control.paramSpeed(slow);
		control.moveCartL(stock_prise_1);
		control.doTool("close");
		control.moveCartL(stock_appro_1);
		control.paramSpeed(fast);
		control.moveCartJ(stock_posi);

		control.moveCartC(posi3, transi);
		control.moveCartL(appro3);
		control.paramSpeed(slow);
		control.moveCartL(prise3);
		control.doTool("open");
		control.moveCartL(appro3);
		control.paramSpeed(fast);
		control.moveCartL(posi3);
		*/
	}
	
	return 0;
}




