#include <string> 
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "motor_cam_tutorial/image_cmd.h"
#include <sstream>

class MotorImage{
	cv::Mat picture;

public:

	void imageCallback(const sensor_msgs::ImageConstPtr& msg)
	{
	  try
	  {
		picture = cv_bridge::toCvShare(msg, "bgr8")->image.clone();
		/*cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
		cv::waitKey(30);*/
	  }
	  catch (cv_bridge::Exception& e)
	  {
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	  }
	}

	bool check_and_print(motor_cam_tutorial::image_cmd::Request &req,
	 					 motor_cam_tutorial::image_cmd::Response &res){
		if ((bool)req.cmd){
			std::ostringstream angle;
			angle << (float)req.angle;
			std::string im_name = (std::string)req.path + angle.str()+ ".png";
			std::cout<<im_name<<std::endl;
			if(cv::imwrite (im_name, picture) || picture.empty()){ 
				res.result = 1;
			}else{
				res.result = 2;
				ROS_ERROR("Failed to save image\n");
			}
		}else{
			std::cout<<"Rodando...\n";
			res.result = 0;
		}
	}
};


int main(int argc, char **argv)
{
  MotorImage mi;
  ros::init(argc, argv, "image_cmd");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  ros::ServiceServer service = nh.advertiseService("image_cmd", &MotorImage::check_and_print, &mi);
  image_transport::Subscriber sub = it.subscribe("camera/image", 1, &MotorImage::imageCallback, &mi);

  ros::spin();
}
