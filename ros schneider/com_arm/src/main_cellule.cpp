#include "control_cellule.h"
#include "recept_cellule.h"
#include <ros/ros.h>
#include <string>
#include <vector>
#include <com_arm/Retour_navette.h>



using namespace std;



int main(int argc, char **argv)
{
	// Création du noeud ROS
	ros::init(argc, argv, "cellule");
	ros::NodeHandle noeud;
	
	
	// Impportation des fonctions de contrôle
	Control_cellule control(noeud);
	
	//////////////////////////////////////////////////////////
	

	/////////////////
	// Subscriber //
	////////////////
	
	Recept_cellule recept(noeud);
	
	
	///////////////////////////////////////////////////////////
	
	//////////////////
	// APPLICATION //
	/////////////////
    

	vector<vector<string>> tab_a1 = { {"A1","D"} , {"A2","D"} , {"A11","D"} , {"A12","D"} } ;
    vector<vector<string>> tab_a2 = { {"A1","G"},{"A2","G"} };
    vector<vector<string>> tab_a3 = { {"A1","D"},{"A2","D"} };
	vector<vector<string>> tab_s1 = { {"ST21","GO"},{"ST20","GO"},{"ST24","GO"},{"ST4","GO"},{"ST22","GO"},{"ST1","STOP"}  };
    vector<vector<string>> tab_s2 = { {"ST1","GO"} };
	
    control.aiguillage(tab_a1);

	while (ros::ok())
	{	
        control.stop(tab_s1);
        while (not recept.PS1){
            ros::spinOnce();
        }
	    control.aiguillage(tab_a2);
        control.stop(tab_s2);
		while (not recept.PS20){
            ros::spinOnce();
        }
        control.aiguillage(tab_a3);
	}
	return 0;
}