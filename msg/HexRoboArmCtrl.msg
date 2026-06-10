# HexRoboArmCtrlMode enum
uint8 CTRL_MODE_MIT=0
uint8 CTRL_MODE_JNT=1
uint8 CTRL_MODE_EE=2

# mit: [jnt.pos, jnt.vel, jnt.eff, jnt.kp, jnt.kd] + [grav]
# jnt: [jnt.pos, jnt.eff, jnt.lim_vel, jnt.lim_acc] + [grav]
# ee:  [pose.position, pose.orientation, jnt.lim_vel, jnt.lim_acc] + [grav]
uint8 ctrl_mode

geometry_msgs/Vector3 grav

HexJnt jnt
geometry_msgs/Pose pose
