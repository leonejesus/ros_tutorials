// ROS Default Header File

#include "ros/ros.h"

// MsgTutorial Message File Header

// The header file is automatically created when building the package.

#include "my_dynamixel_controller/MsgDynamixel.h"

#include "dynamixel_msgs/JointState.h"

void motor_command(void);
float motor_state[4];
float count = 0;
int Estado = 1;
bool moving;
float motor_position[5] = {0,1.57,3.14,4.71,6.28}; 
void msgCallback(const dynamixel_msgs::JointState::ConstPtr& msg)

{   

   motor_state[0] = msg->goal_pos;
   motor_state[1] = msg->current_pos;
   motor_state[2] = msg->error;
   motor_state[3] = msg->load;
   moving = msg->is_moving;   
   ROS_INFO("Motor Ids = %i", msg->motor_ids[0]);
   ROS_INFO("Motor Temp = %i", msg->motor_temps[0]); 
   ROS_INFO("Goal Position = %f", msg->goal_pos);   
   ROS_INFO("Current Position = %f", msg->current_pos); 
   ROS_INFO("Error = %f", msg->error); 
   ROS_INFO("Velocity = %f", msg->velocity);
   ROS_INFO("Load = %f", msg->load);
   ROS_INFO("Moving = %i", msg->is_moving);
   ROS_INFO("Motor Goal Position = %f", motor_state[0]);

}  

int main(int argc, char **argv){

  my_dynamixel_controller::MsgDynamixel msg;
  ros::init(argc, argv, "dynamixel_publisher");   
  ros::init(argc, argv, "dynamixel_subscriber");
    
  ros::NodeHandle nh;   
  ros::Publisher dynamixel_publisher = nh.advertise<my_dynamixel_controller::MsgDynamixel>("tilt_controller/command", 100); 
  ros::Subscriber dynamixel_subscriber = nh.subscribe("tilt_controller/state", 100, msgCallback); 
  ros::Rate loop_rate(0.2); // Set the loop period (Hz)
  //ros::spinOnce();

  while (ros::ok()){
   motor_command();
   //msg.stamp = ros::Time::now(); // Save current time in the stamp of 'msg'
   //msg.data = count;      
   //ROS_INFO("send msg = %f", msg.data);     

   //dynamixel_publisher.publish(msg);  
   loop_rate.sleep();         
  /* switch(Estado){

   case 1:

    if(count < 6.28) count += 3.14/5;

    else Estado = 2;

   break;

   case 2:

    if(count > 0) count-= 3.14/5;

    else Estado = 1;

   break; 

   default:

    Estado = 1;

   break;

  }*/
   ros::spinOnce();
 }
   return 0;

}

void motor_command(void){

  my_dynamixel_controller::MsgDynamixel msg;
  ros::NodeHandle nh;   
  ros::Publisher dynamixel_publisher = nh.advertise<my_dynamixel_controller::MsgDynamixel>("tilt_controller/command", 100); 
  ros::Subscriber dynamixel_subscriber = nh.subscribe("tilt_controller/state", 100, msgCallback);

 

 switch(Estado){
  case 1:
    msg.data = motor_position[0]; 
    dynamixel_publisher.publish(msg);
    ROS_INFO("send msg = %f", msg.data); 

    if(motor_state[1] == (motor_position[0]+motor_state[2])){
      //Tira foto
      Estado = 2;
    }else Estado = 1;

  break;
    case 2:
    msg.data = motor_position[1]; 
    dynamixel_publisher.publish(msg);
    ROS_INFO("send msg = %f", msg.data);

    if(motor_state[1] == (motor_position[1]+motor_state[2]))     {
      //Tira foto
      Estado = 1;
    }else Estado = 2;
  break;
 }  

} 
