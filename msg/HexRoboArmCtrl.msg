# HexRoboArmCtrlMode enum
uint8 CTRL_MODE_MIT=0
uint8 CTRL_MODE_JNT=1
uint8 CTRL_MODE_EE=2

# mit: [jnt.position, jnt.velocity, jnt.effort, mit_kp, mit_kd] + [grav]
# jnt: [jnt.position, jnt.effort, lim_vel, lim_acc] + [grav]
# ee:  [pose.position, pose.orientation, lim_vel, lim_acc] + [grav]
uint8 ctrl_mode

geometry_msgs/Vector3 grav

sensor_msgs/JointState jnt
geometry_msgs/Pose pose

float64[] mit_kp
float64[] mit_kd

float64[] lim_vel
float64[] lim_acc
