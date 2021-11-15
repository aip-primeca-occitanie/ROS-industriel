#include "cellule_tp.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <schneider/Retour_cellule.h>
#include <string>
#include <thread> 
#include <chrono>
#include <iostream>
#include <math.h>
using namespace std;


Cellule_tp::Cellule_tp(ros::NodeHandle noeud)
{
	pub = noeud.advertise<std_msgs::String>("/control_cellule", 1);
	client = noeud.serviceClient<schneider::Retour_cellule>("retour_cellule");
}

Cellule_tp::~Cellule_tp()
{
}

void Cellule_tp::read()
{	
	srv.request.memoire = 1;
	std::this_thread::sleep_for (std::chrono::milliseconds(200));
	if (client.call(srv))
	{
		ST1 = srv.response.ST1;
		ST2 = srv.response.ST2;
		ST3 = srv.response.ST3;
		ST4 = srv.response.ST4;
		ST5 = srv.response.ST5;
		ST20 = srv.response.ST20;
		ST21 = srv.response.ST21;
		ST22 = srv.response.ST22;
		ST23 = srv.response.ST23;
		ST24 = srv.response.ST24;
		R1D = srv.response.R1D;
		R2D = srv.response.R2D;
		R11D = srv.response.R11D;
		R12D = srv.response.R12D;
		R1G = srv.response.R1G;
		R2G = srv.response.R2G;
		R11G = srv.response.R11G;
		R12G = srv.response.R12G;
		PI1 = srv.response.PI1;
		PI2 = srv.response.PI2;
		PI7 = srv.response.PI7;
		PI8 = srv.response.PI8;
		D1 = srv.response.D1;
		D2 = srv.response.D2;
		D11 = srv.response.D11;
		D12 = srv.response.D12;
		V1 = srv.response.V1;
		V2 = srv.response.V2;
		V11 = srv.response.V11;
		V12 = srv.response.V12;
		PS1 = srv.response.PS1;
		PS2 = srv.response.PS2;
		PS3 = srv.response.PS3;
		PS4 = srv.response.PS4;
		PS5 = srv.response.PS5;
		PS20 = srv.response.PS20;
		PS21 = srv.response.PS21;
		PS22 = srv.response.PS22;
		PS23 = srv.response.PS23;
		PS24 = srv.response.PS24;
		D1D = srv.response.D1D;
		D2D = srv.response.D2D;
		D11D = srv.response.D11D;
		D12D = srv.response.D12D;
		D1G = srv.response.D1G;
		D2G = srv.response.D2G;
		D11G = srv.response.D11G;
		D12G = srv.response.D12G;
		CPI1 = srv.response.CPI1;
		CPI2 = srv.response.CPI2;
		CPI7 = srv.response.CPI7;
		CPI8 = srv.response.CPI8;
		CP1 = srv.response.CP1;
		CP2 = srv.response.CP2;
		CP9 = srv.response.CP9;
		CP10 = srv.response.CP10;
	}
	else
	{
		read();
	}
}


void Cellule_tp::write(vector<vector<int>> consigne)
{
	data = "";
	for (int i=0; i<consigne.size(); i=i+1){
        data += "," + to_string(consigne[i][0]) + "," + to_string(consigne[i][1]);
    }
	msg.data = data;
    std::this_thread::sleep_for (std::chrono::milliseconds(100));
	pub.publish(msg);
}



