# HexRoboGripCtrlMode: 0=mit, 1=jnt, 2=tau
# mit: [jnt.position, jnt.velocity, jnt.effort, mit_kp, mit_kd]
# jnt: [jnt.position, jnt.effort, lim_vel]
# tau: [jnt.effort, lim_vel]
uint8 ctrl_mode

sensor_msgs/JointState jnt

float64[] mit_kp
float64[] mit_kd

float64[] lim_vel
