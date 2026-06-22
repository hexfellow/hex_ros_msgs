# HexRosRoboArmCtrlMode enum
uint8 CTRL_MODE_NONE=0
uint8 CTRL_MODE_MIT=1
uint8 CTRL_MODE_JNT=2
uint8 CTRL_MODE_EE=3

# none: (no control applied)
# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd] + [grav]
# jnt: [jnt.pos, jnt.eff, jnt.lim_vel, jnt.lim_acc] + [grav]
# ee:  [pose.position, pose.orientation, jnt.eff, jnt.lim_vel, jnt.lim_acc] + [grav]
uint8 ctrl_mode

geometry_msgs/Vector3 grav

HexRosJnt jnt
geometry_msgs/Pose pose
