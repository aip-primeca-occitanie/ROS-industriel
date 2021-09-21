#include "control.h"
#include "recept.h"
#include <ros/ros.h>
#include <string>
#include <vector>
#include <iostream>
#include <com_arm/State.h>
#include <math.h>
#include <iostream>

using namespace std;



int main(int argc, char **argv)
{
	// Création du noeud ROS
	ros::init(argc, argv, "app_test");
	ros::NodeHandle noeud;
	
	
	// Impportation des fonctions de contrôle
	Control control(noeud, "staubli");
	
	//////////////////////////////////////////////////////////
	

	/////////////////
	// Subscriber //
	////////////////
	
	std::string s = "/state";
	Recept state(noeud, "staubli", s);
	
	//std::string j = "/joint";
	//Recept join(noeud, j);

	std::string jo = "/jointorder";
	Recept joint(noeud, "staubli", jo);
	
	//std::string c = "/cart";
	//Recept joint(noeud, c);
	
	///////////////////////////////////////////////////////////
	
	//////////////////
	// APPLICATION //
	/////////////////

	///****/// Joint  { j1, j2, j3, j4, j5, j6 }

	
	///****/// Cart  { x, y, z, rx, ry, rz }
	
	
	///****/// Speed  { accel, vel, decel, tvel, rvel, blend, leave, reach }

	int speed[8] = { 100, 100, 100, 9999, 9999, 1, 1, 1 };


	

	while (joint.size <= 0 && ros::ok())
	{
		cout << joint.size << ' ';
		ros::spinOnce();
	}
	
	vector<double> start;
	start.resize(6);
	start = joint._pos[0];

	control.paramSpeed(speed);
	
	while (ros::ok())
	{	
	
		if (start != joint._pos[joint.size-1])
		{	
			for (int i=0; i<joint.size; i=i+1){
				//joint._pos[i].resize(6);
				control.moveJoint( joint._pos[i] );
			}
			start = joint._pos[joint.size-1];
		}
		else
		{
			ros::spinOnce();
		}
	}
	return 0;
}
