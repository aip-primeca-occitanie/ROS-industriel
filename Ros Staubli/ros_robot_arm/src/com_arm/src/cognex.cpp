#include "cognex.h"
#include <ros/ros.h>
#include <string>
#include <std_msgs/Bool.h>
#include <com_arm/Calib_camera.h>
#include <com_arm/Objet_camera.h>
#include <chrono>
#include <thread> 
using namespace std;



Cognex::Cognex(ros::NodeHandle noeud, std::string robot, std::string topic)
{
	if (topic == "/calib")
	{
		_point0 = false;
		_point1 = false;
		_point2 = false;
		_point3 = false;
    	sub = noeud.subscribe("/cognex_"+robot+"_calibration", 1, &Cognex::calibCallback, this);
	}
	else if (topic == "/objet")
	{
		pub = noeud.advertise<std_msgs::Bool>("/"+robot+"_detection", 1);
		sub = noeud.subscribe("/cognex_"+robot+"_objet", 1, &Cognex::objetCallback, this);
	}

}

Cognex::~Cognex()
{
}

//Pour le topic /state
void Cognex::calibCallback(const com_arm::Calib_camera::ConstPtr& msg) 
{
	_point0 = msg->point0;
	_point1 = msg->point1;
	_point2 = msg->point2;
	_point3 = msg->point3;
	
}

void Cognex::objetCallback(const com_arm::Objet_camera::ConstPtr& msg) 
{
	_go = msg->go;
    _x = msg->x;
	_y = msg->y;
	
}

void Cognex::detection() 
{
	msg.data = true;
	pub.publish(msg);
    std::this_thread::sleep_for (std::chrono::milliseconds(1));
	msg.data = false;
	pub.publish(msg);
	
}