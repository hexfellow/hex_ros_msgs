# HexRoboChsCtrlMode enum
uint8 CTRL_MODE_MIT=0
uint8 CTRL_MODE_VEL=1

# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd]
# vel: [vel.linear, vel.angular]
uint8 ctrl_mode

HexJnt jnt
geometry_msgs/Twist vel

