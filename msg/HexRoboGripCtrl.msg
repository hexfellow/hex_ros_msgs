# HexRoboGripCtrlMode enum
uint8 CTRL_MODE_MIT=0
uint8 CTRL_MODE_JNT=1
uint8 CTRL_MODE_TAU=2

# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd]
# jnt: [jnt.pos, jnt.eff, jnt.lim_vel]
# tau: [jnt.eff, jnt.lim_vel]
uint8 ctrl_mode

HexJnt jnt
