#include "control.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <com_arm/State.h>
#include <string>
#include <thread> 
#include <chrono>
#include <iostream>
#include <math.h>
#include <vector>
using namespace std;

#define PI 3.14159265358979323846

Control::Control(ros::NodeHandle noeud, std::string robot)
{
	control_publisher = noeud.advertise<std_msgs::String>("/"+robot+"_consigne", 1);
	sub = noeud.subscribe("/"+robot+"_state", 1, &Control::flagCallback, this);
}

Control::~Control()
{
}

void Control::moveJoint(double joint[6])
{
	joint[0] = joint[0]*180/PI;
	joint[1] = joint[1]*180/PI;
	joint[2] = joint[2]*180/PI;
	joint[3] = joint[3]*180/PI;
	joint[4] = joint[4]*180/PI;
	joint[5] = joint[5]*180/PI;
	data = "";
	data += "11X";
	data += std::to_string(joint[0]);
	data += "X";
	data += std::to_string(joint[1]);
	data += "X";
	data += std::to_string(joint[2]);
	data += "X";
	data += std::to_string(joint[3]);
	data += "X";
	data += std::to_string(joint[4]);
	data += "X";
	data += std::to_string(joint[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::moveJoint(vector<double> joint)
{
	joint[0] = joint[0]*180/PI;
	joint[1] = joint[1]*180/PI;
	joint[2] = joint[2]*180/PI;
	joint[3] = joint[3]*180/PI;
	joint[4] = joint[4]*180/PI;
	joint[5] = joint[5]*180/PI;
	data = "";
	data += "11X";
	data += std::to_string(joint[0]);
	data += "X";
	data += std::to_string(joint[1]);
	data += "X";
	data += std::to_string(joint[2]);
	data += "X";
	data += std::to_string(joint[3]);
	data += "X";
	data += std::to_string(joint[4]);
	data += "X";
	data += std::to_string(joint[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::moveCartJ(double cart[6])
{
	data = "";
	data += "121X";
	data += std::to_string(cart[0]);
	data += "X";
	data += std::to_string(cart[1]);
	data += "X";
	data += std::to_string(cart[2]);
	data += "X";
	data += std::to_string(cart[3]);
	data += "X";
	data += std::to_string(cart[4]);
	data += "X";
	data += std::to_string(cart[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::moveCartL(double cart[6])
{
	data = "";
	data += "122X";
	data += std::to_string(cart[0]);
	data += "X";
	data += std::to_string(cart[1]);
	data += "X";
	data += std::to_string(cart[2]);
	data += "X";
	data += std::to_string(cart[3]);
	data += "X";
	data += std::to_string(cart[4]);
	data += "X";
	data += std::to_string(cart[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();

}


void Control::moveCartC(double cible[6], double interm[6])
{
	data = "";
	data += "1232X";
	data += std::to_string(interm[0]);
	data += "X";
	data += std::to_string(interm[1]);
	data += "X";
	data += std::to_string(interm[2]);
	data += "X";
	data += std::to_string(interm[3]);
	data += "X";
	data += std::to_string(interm[4]);
	data += "X";
	data += std::to_string(interm[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	data += "1231X";
	data += std::to_string(cible[0]);
	data += "X";
	data += std::to_string(cible[1]);
	data += "X";
	data += std::to_string(cible[2]);
	data += "X";
	data += std::to_string(cible[3]);
	data += "X";
	data += std::to_string(cible[4]);
	data += "X";
	data += std::to_string(cible[5]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::paramSpeed(int speed[8])
{
	data = "";
	data += "2X";
	data += std::to_string(speed[0]);
	data += "X";
	data += std::to_string(speed[1]);
	data += "X";
	data += std::to_string(speed[2]);
	data += "X";
	data += std::to_string(speed[3]);
	data += "X";
	data += std::to_string(speed[4]);
	data += "X";
	data += std::to_string(speed[5]);
	data += "X";
	data += std::to_string(speed[6]);
	data += "X";
	data += std::to_string(speed[7]);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::paramTool(float x, float y, float z, float rx, float ry, float rz, float otime, float ctime)
{
	data = "";
	data += "31X";
	data += std::to_string(x);
	data += "X";
	data += std::to_string(y);
	data += "X";
	data += std::to_string(z);
	data += "X";
	data += std::to_string(rx);
	data += "X";
	data += std::to_string(ry);
	data += "X";
	data += std::to_string(rz);
	data += "X";
	data += std::to_string(otime);
	data += "X";
	data += std::to_string(ctime);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::doTool(string action)
{
	data = "";
	data += "32X";
	if (action == "close") data += "1";
	else if  (action == "open") data += "0";
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::paramConfig(int shoulder, int elbow, int wrist)
{
	data = "";
	data += "31X";
	data += std::to_string(shoulder);
	data += "X";
	data += std::to_string(elbow);
	data += "X";
	data += std::to_string(wrist);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::setMoniteurSpeed(int speed)
{
	data = "";
	data += "42X";
	data += std::to_string(speed);
	data += "XF";
	msg.data = data;
	while (_flag != 1) ros::spinOnce();
	control_publisher.publish(msg);
	std::this_thread::sleep_for (std::chrono::milliseconds(pause));
	data = "";
	ros::spinOnce();
}

void Control::flagCallback(const com_arm::State::ConstPtr& msg) 
{
	_flag = msg->flag;
}

void Control::stop()
{
	data = "99XF";
	msg.data = data;
	control_publisher.publish(msg);
	data = "";
}


