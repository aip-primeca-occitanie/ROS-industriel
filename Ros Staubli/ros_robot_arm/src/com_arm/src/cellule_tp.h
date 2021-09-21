#ifndef CELLULE_TP_H
#define CELLULE_TP_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <com_arm/Retour_cellule.h>
#include <string>
using namespace std;



class Cellule_tp
{

private:
	ros::Publisher pub;
	std_msgs::String msg;
	ros::ServiceClient client;
	com_arm::Retour_cellule srv;
	string data;

	
public:
	Cellule_tp(ros::NodeHandle noeud);
	~Cellule_tp();
	void read();
	void write(vector<vector<int>> consigne);
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