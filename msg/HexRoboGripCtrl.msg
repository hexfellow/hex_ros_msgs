# HexRoboGripCtrlMode enum
uint8 CTRL_MODE_NONE=0
uint8 CTRL_MODE_MIT=1
uint8 CTRL_MODE_JNT=2
uint8 CTRL_MODE_TAU=3

# none: (no control applied)
# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd]
# jnt: [jnt.pos, jnt.eff, jnt.lim_vel]
# tau: [jnt.eff, jnt.lim_vel]
uint8 ctrl_mode

HexJnt jnt
