#include "control.h"
#include "recept.h"
#include <ros/ros.h>
#include <string>
#include <iostream>
#include <com_arm/State.h>
#include <chrono>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>

sig_atomic_t volatile request_shutdown = 0;
Control* p_control;

void my_handler(int sig)
{
	p_control->stop();
	request_shutdown = 1;
	exit(0);
}

int main(int argc, char **argv)
{
	// Création du noeud ROS
	ros::init(argc, argv, "forme", ros::init_options::NoSigintHandler);
	ros::NodeHandle noeud;
	
	signal (SIGINT,my_handler);
	
	// Impportation des fonctions de contrôle
	Control control(noeud, "staubli");
	p_control = &control;
	
	//////////////////////////////////////////////////////////
	
	/////////////////
	// Subscriber //
	////////////////
	
	std::string s = "/state";
	Recept state(noeud, "staubli", s);
	
	//std::string j = "/joint";
	//Recept joint(noeud, j);
	
	//std::string c = "/cart";
	//Recept joint(noeud, c);
	
	///////////////////////////////////////////////////////////
	
	//////////////////
	// APPLICATION //
	/////////////////



	///****/// Joint  { j1, j2, j3, j4, j5, j6 }
	
	///****/// Cart  { x, y, z, rx, ry, rz }
	
	double init[6] = { -248.9, 347.39, -147.46, -89.62, -15.14, 88.96 };
	double p1[6] = { -237.77, 400.31, -274.17, -89.56, 15.14, 88.94 };
	double p2[6] = { -249.65, 472.17, -274.17, -89.58, 15.15, 88.92 };
	double p3[6] = { -232, 524.47, -274.17, -89.58, 15.15, 88.91 };
	double p4[6] = { -190.5, 565.1, -274.17, -89.59, 15.15, 88.91 };
	double p5[6] = { -124.48, 584.16, -274.17, -89.59, 15.15, 88.91 };
	double p6[6] = { -55.82, 568.34, -274.17, -89.6, 15.15, 88.91 };
	double p7[6] = { -9.89, 524.48, -274.17, -89.6, 15.15, 88.92 };
	double p8[6] = { 10.62, 467.22, -274.17, -89.6, 15.15, 88.92 };
	double p9[6] = { 1.63, 403.27, -274.17, -89.61, 15.15, 88.92 };
	double p10[6] = { -50.23, 426.56, -274.17, -89.61, 15.15, 88.92 };
	double p11[6] = { -107.3, 433.35, -274.17, -89.61, 15.15, 88.96 };
	double p12[6] = { -129.73, 435.28, -274.17, -89.61, 15.15, 88.96 };
	double p13[6] = { -185.72, 420.87, -274.17, -89.62, 15.14, 88.96 };
	
	
	
	///****/// Speed  { accel, vel, decel, tvel, rvel, blend, leave, reach }

	int fast[8] = { 100, 100, 100, 9999, 9999, 0, 20, 20 };
	int slow[8] = { 50, 50, 50, 100, 100, 0, 0, 0 };
	int fastb1[8] = { 100, 100, 100, 9999, 9999, 1, 50, 50 };
	int fastb2[8] = { 100, 100, 100, 9999, 9999, 2, 200, 100 };
	
	
	control.doTool("close");
	control.paramSpeed(fast);
	control.moveCartJ(init);
	
	while (!request_shutdown)
	{	
		control.moveCartL(p1);
		control.paramSpeed(fastb1);
		control.moveCartC(p5, p3);
		control.paramSpeed(fast);
		control.moveCartC(p9, p7);
		control.paramSpeed(fastb1);
		control.moveCartL(p10);
		control.moveCartL(p11);
		control.moveCartL(p12);
		control.moveCartL(p13);
		control.paramSpeed(fast);
		control.moveCartL(p1);
		state.waitEndMove();
	}
	return 0;
}

