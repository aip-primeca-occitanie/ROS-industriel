#ifndef CONTROL_H
#define CONTROL_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <com_arm/State.h>
#include <string>
#include <chrono>
#include <iostream>
#include <vector>
using namespace std;



class Control
{

private:
	ros::Publisher control_publisher;
	ros::Subscriber sub;
	std_msgs::String msg;
	std::string data;
	int pause = 20;
	
	
public:
	Control(ros::NodeHandle noeud, std::string robot);
	~Control();
	void moveJoint(double joint[6]);
	void moveJoint(vector<double> joint);
	void moveCartJ(double cart[6]);
	void moveCartL(double cart[6]);
	void moveCartC(double cible[6], double interm[6]);
	void paramSpeed(int speed[8]);
	void paramTool(float x, float y, float z, float rx, float ry, float rz, float otime, float ctime);
	void doTool(string action);
	void paramConfig(int shoulder, int elbow, int wrist);
	void setMoniteurSpeed(int speed);
	void stop();
	int _flag;
	void flagCallback(const com_arm::State::ConstPtr& msg);
	
};

#endif
