#include <string> 
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "motor_cam_tutorial/mot_cmd.h"
#include "std_msgs/Int32.h"
#include <sstream>
#include <vector>

class MotorImage{
	cv::Mat picture;
	ros::Publisher pub;
	ros::NodeHandle nh;
	ros::Subscriber sub;
	image_transport::Subscriber sub_i;
	float mot_pos;
	std_msgs::Int32 result;
public:
	MotorImage(){
		pub = nh.advertise<std_msgs::Int32>("img_control_res", 1000);
		image_transport::ImageTransport it(nh);
		sub_i = it.subscribe("image_pub", 1, &MotorImage::imageCallback, this);
		sub = nh.subscribe("mot_cmd", 1000, &MotorImage::check_and_print, this);
	}

	void imageCallback(const sensor_msgs::ImageConstPtr& msg)
	{
	  try
	  {
		picture = cv_bridge::toCvShare(msg, "bgr8")->image.clone();
	  }
	  catch (cv_bridge::Exception& e)
	  {
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	  }
	}

	void check_and_print(const motor_cam_tutorial::mot_cmd::ConstPtr& msg){
		if (msg->cmd){
			std::ostringstream mot_pos;
			mot_pos << (float)msg->mot_pos;
			std::string im_name = /*(std::string)msg->path*/ "./" + mot_pos.str()+ ".png";
			if(cv::imwrite (im_name, picture) && !picture.empty()){ 
				result.data = 1;
			}else{
				result.data = 2;
				cv::imshow("view", picture);
				cv::waitKey(30);
				ROS_ERROR("Failed to save image\n");
			}
		}else{
			result.data = 0;
		}
		pub.publish(result);
	}
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "controller_msg");
  MotorImage mi;
  ros::spin();
}
