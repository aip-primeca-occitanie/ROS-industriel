#ifndef COGNEX_H


#include <ros/ros.h>
#include <string>
#include <std_msgs/Bool.h>
#include <cognex/Calib_camera.h>
#include <cognex/Objet_camera.h>


using namespace std;

class Cognex
{

private:
    ros::Publisher pub;
	ros::Subscriber sub;
    std::string _state = "/calib";
	std::string _cart = "/objet";
    bool data;
	
public:
	Cognex(ros::NodeHandle noeud, std::string robot, std::string topic);
	~Cognex();
	void calibCallback(const cognex::Calib_camera::ConstPtr& msg);
    void objetCallback(const cognex::Objet_camera::ConstPtr& msg);
    void detection();
    std_msgs::Bool msg;
	bool _point0;
    bool _point1;
    bool _point2;
    bool _point3;
    bool _go;
    double _x;
    double _y;
	
	
};

#endif
