# HexRoboLiftCtrlMode: 0=pos, 1=vel
# mit: [jnt.position, jnt.velocity, jnt.effort, mit_kp, mit_kd]
# jnt: [jnt.position, jnt.effort, lim_vel]
# tau: [jnt.effort, lim_vel]
uint8 ctrl_mode

sensor_msgs/JointState jnt
