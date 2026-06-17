# hex_ros_msgs

## What does this package do

This package provides unified HexRos message definitions that can be used in **both ROS 1 and ROS 2**. It contains control and state message types for various robotic components, including arm, chassis, gripper, lift, manipulator, and teleop handle.

The package is a pure message definition package — it does not contain any nodes. Other packages depend on it to communicate control commands and state feedback across the HexRos robotic system.

## Maintainer

[Dong Zhaorui](https://github.com/IBNBlank)

## Prerequisites

Ensure the following software and hardware are installed:

* **ROS**:  
   Refer to the [ROS Installation guide](http://wiki.ros.org/ROS/Installation)

### Verified Platforms

* [x] **x64**
* [ ] **Jetson Orin Nano**
* [x] **Jetson Orin NX**
* [ ] **Jetson AGX Orin**
* [ ] **Horizon RDK X5**
* [ ] **Rockchip RK3588**

## Public APIs

### Message Definitions

#### Base Types

| Message    | Description                                                  |
| ---------- | ------------------------------------------------------------ |
| `HexRosJnt`   | Joint data with position, velocity, effort, stiffness/damping gains, and velocity/acceleration limits. |

#### Control Messages

| Message                       | Sub-fields                     | Description                                                                            |
| ----------------------------- | ------------------------------ | -------------------------------------------------------------------------------------- |
| `HexRosRoboArmCtrl`              | `ctrl_mode`, `grav`, `jnt`, `pose` | Arm control command supporting NONE, MIT, joint-position, and end-effector modes. |
| `HexRosRoboChsCtrl`              | `ctrl_mode`, `jnt`, `vel`      | Chassis control command supporting NONE, MIT, and velocity modes.                      |
| `HexRosRoboGripCtrl`             | `ctrl_mode`, `jnt`             | Gripper control command supporting NONE, MIT, joint-position, and torque modes.        |
| `HexRosRoboLiftCtrl`             | `ctrl_mode`, `jnt`             | Lift control command supporting NONE, position, and velocity modes.                    |
| `HexRosRoboManipCtrl`            | `arm_ctrl`, `grip_ctrl`        | Combined manipulator control command (arm + gripper).                                  |
| `HexRosTeleopHandleCtrl`         | `led_red`, `led_green`, `led_blue` | Teleop handle LED control command.                                                   |

#### Control Messages (Stamped)

| Message                          | Header + Sub-field            |
| -------------------------------- | ----------------------------- |
| `HexRosRoboArmCtrlStamped`          | `header` + `HexRosRoboArmCtrl`   |
| `HexRosRoboChsCtrlStamped`          | `header` + `HexRosRoboChsCtrl`   |
| `HexRosRoboGripCtrlStamped`         | `header` + `HexRosRoboGripCtrl`  |
| `HexRosRoboLiftCtrlStamped`         | `header` + `HexRosRoboLiftCtrl`  |
| `HexRosRoboManipCtrlStamped`        | `header` + `HexRosRoboManipCtrl` |
| `HexRosTeleopHandleCtrlStamped`     | `header` + `HexRosTeleopHandleCtrl` |

#### State Messages

| Message                    | Sub-fields                     | Description                                                  |
| -------------------------- | ------------------------------ | ------------------------------------------------------------ |
| `HexRosRoboArmState`          | `jnt` (JointState), `pose`     | Arm state including joint states and end-effector pose.      |
| `HexRosRoboChsState`          | `jnt` (JointState), `odom`     | Chassis state including joint states and odometry.           |
| `HexRosRoboGripState`         | `jnt` (JointState)             | Gripper state including joint states.                        |
| `HexRosRoboLiftState`         | `jnt` (JointState), `pose`     | Lift state including joint states and pose.                  |
| `HexRosRoboManipState`        | `arm_state`, `grip_state`      | Combined manipulator state (arm + gripper).                  |
| `HexRosTeleopHandleState`     | `trigger`, `axis_x`, `axis_y`, `btn_w`, `btn_x`, `btn_y`, `btn_z` | Teleop handle state with trigger, axes, and button inputs. |

#### State Messages (Stamped)

| Message                           | Header + Sub-field             |
| --------------------------------- | ------------------------------ |
| `HexRosRoboArmStateStamped`          | `header` + `HexRosRoboArmState`   |
| `HexRosRoboChsStateStamped`          | `header` + `HexRosRoboChsState`   |
| `HexRosRoboGripStateStamped`         | `header` + `HexRosRoboGripState`  |
| `HexRosRoboLiftStateStamped`         | `header` + `HexRosRoboLiftState`  |
| `HexRosRoboManipStateStamped`        | `header` + `HexRosRoboManipState` |
| `HexRosTeleopHandleStateStamped`     | `header` + `HexRosTeleopHandleState` |

## Getting Started

Follow these steps to set up the project for development and testing on your local machine:

1. Create a workspace `catkin_ws` and navigate to the `src` directory:

   ```shell
   mkdir -p catkin_ws/src
   cd catkin_ws/src
   ```

2. Clone the repository:

   ```shell
   git clone https://github.com/hexfellow/hex_ros_msgs.git
   ```

3. Navigate back to the `catkin_ws` directory and build the workspace:

   For ROS 1:

   ```shell
   cd ../
   catkin_make
   ```

   For ROS 2:

   ```shell
   cd ../
   colcon build
   ```

4. Source the `setup.bash` file:

   For ROS 1:

   ```shell
   source devel/setup.bash --extend
   ```

   For ROS 2:

   ```shell
   source install/setup.bash --extend
   ```

### Usage

Once built and sourced, the message types provided by this package can be used by other ROS packages. For example, in Python:

```python
from hex_ros_msgs.msg import HexRosRoboArmCtrl, HexRosRoboChsState
```

Or in C++:

```cpp
#include <hex_ros_msgs/HexRosRoboArmCtrl.h>
#include <hex_ros_msgs/HexRosRoboChsState.h>
```
