#ifndef CONTROL_CELLULE_H
#define CONTROL_CELLULE_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <com_arm/Retour_navette.h>
#include <chrono>
#include <string>
#include <vector>
using namespace std;



class Control_cellule
{

private:
	ros::Publisher pub;
	ros::Subscriber sub;
	std_msgs::String msg;
	std::string data;
	bool V1;
    bool V2;
    bool V11;
    bool V12;
    void callback(const com_arm::Retour_navette::ConstPtr& msg);
    int pause = 2000;
	
public:
	Control_cellule(ros::NodeHandle noeud);
	~Control_cellule();
	void aiguillage(vector<vector<string>> tab_a);
	void stop(vector<vector<string>> tab_s);
	void taquet(vector<vector<string>> tab_t);
	
	
};

#endif
