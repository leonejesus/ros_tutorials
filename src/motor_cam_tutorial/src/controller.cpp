#include <string> 
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "motor_cam_tutorial/image_cmd.h"
#include <sstream>
//Class creation to allow the use of camera callback msg in the service
class MotorImage{
	cv::Mat picture;

public:
	//callback to get camera data through "image_pub" topic
	void imageCallback(const sensor_msgs::ImageConstPtr& msg){
	  try{
		picture = cv_bridge::toCvShare(msg, "bgr8")->image.clone();
	  }
	  catch (cv_bridge::Exception& e){
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	  }
	}
	// service callback that receives "angle" (int representing image name), "path" (path to save image data) and "cmd" (comand confirming if the camera data should be saved). The service response should return a "result" returning 1 if the data was correctly saved
	bool check_and_print(motor_cam_tutorial::image_cmd::Request &req, motor_cam_tutorial::image_cmd::Response &res){
		if ((bool)req.cmd){
			std::ostringstream angle;
			angle << (float)req.angle;
			//image name composed by path (finished with "/")+ capture angle+extension
			std::string im_name = (std::string)req.path + angle.str()+ ".png";
			//checking if the picture has a valid content, otherwise system would failed and stop trying to write the image
			if(!picture.empty()){ 
				cv::imwrite (im_name, picture);
				std::cout<<"Image saved in '"<<im_name<<"'\n";
				res.result = 1;
			}else{
				res.result = 0;
				ROS_ERROR("Failed to save image\n");
			}
		}else{
			res.result = 2;
		}
	}
};


int main(int argc, char **argv)
{
  MotorImage mi;
  ros::init(argc, argv, "Img_Ctrl_server");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  ros::ServiceServer service = nh.advertiseService("image_cmd", &MotorImage::check_and_print, &mi);
  image_transport::Subscriber sub = it.subscribe("image_pub", 1, &MotorImage::imageCallback, &mi);

  ros::spin();
}
