# HexRoboChsCtrlMode enum
uint8 CTRL_MODE_MIT=0
uint8 CTRL_MODE_VEL=1

# mit: [jnt.position, jnt.velocity, jnt.effort, mit_kp, mit_kd]
# vel: [vel.linear, vel.angular]
uint8 ctrl_mode

sensor_msgs/JointState jnt
geometry_msgs/Twist vel

float64[] mit_kp
float64[] mit_kd
