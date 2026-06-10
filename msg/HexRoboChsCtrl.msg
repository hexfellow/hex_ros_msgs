# HexRoboChsCtrlMode: 0=mit, 1=vel
# mit: [jnt.position, jnt.velocity, jnt.effort, mit_kp, mit_kd]
# vel: [vel.linear, vel.angular]
uint8 ctrl_mode

sensor_msgs/JointState jnt
geometry_msgs/Twist vel

float64[] mit_kp
float64[] mit_kd
