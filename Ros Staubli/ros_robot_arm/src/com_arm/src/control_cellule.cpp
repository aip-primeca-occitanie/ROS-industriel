#include "control_cellule.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <com_arm/Retour_navette.h>
#include <string>
#include <thread> 
#include <chrono>
#include <iostream>
#include <math.h>
#include <vector>
using namespace std;

#define PI 3.14159265358979323846

Control_cellule::Control_cellule(ros::NodeHandle noeud)
{
	pub = noeud.advertise<std_msgs::String>("/control_navette", 1);
	sub = noeud.subscribe("/retour_navette", 1, &Control_cellule::callback, this);
}

Control_cellule::~Control_cellule()
{
}

void Control_cellule::aiguillage(vector<vector<string>> tab_a)
{
	data = "A";
    for (int i=0; i<tab_a.size(); i=i+1){
        data += "," + tab_a[i][0] + "," + tab_a[i][1];
    }
	msg.data = data;
    std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	pub.publish(msg);
	data = "";
	ros::spinOnce();
}

void Control_cellule::stop(vector<vector<string>> tab_s)
{
	data = "S";
    for (int i=0; i<tab_s.size(); i=i+1){
        data += "," + tab_s[i][0] + "," + tab_s[i][1];
    }
	msg.data = data;
    std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	pub.publish(msg);
	data = "";
	ros::spinOnce();
}

void Control_cellule::taquet(vector<vector<string>> tab_t)
{
	data = "T";
    for (int i=0; i<tab_t.size(); i=i+1){
        data += "," + tab_t[i][0] + "," + tab_t[i][1];
    }
	msg.data = data;
    std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	pub.publish(msg);
	data = "";
	ros::spinOnce();
}

void Control_cellule::callback(const com_arm::Retour_navette::ConstPtr& msg) 
{
	V1 = msg->V1;
    V2 = msg->V2;
    V11 = msg->V11;
    V12 = msg->V12;
}