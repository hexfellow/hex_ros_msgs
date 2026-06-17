# HexRosRoboChsCtrlMode enum
uint8 CTRL_MODE_NONE=0
uint8 CTRL_MODE_MIT=1
uint8 CTRL_MODE_VEL=2

# none: (no control applied)
# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd]
# vel: [vel.linear, vel.angular]
uint8 ctrl_mode

HexRosJnt jnt
geometry_msgs/Twist vel

