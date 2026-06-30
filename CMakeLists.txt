cmake_minimum_required(VERSION 3.5)
set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 14)
add_compile_options(-Wall -Wextra -Wpedantic)
if(POLICY CMP0148)
    cmake_policy(SET CMP0148 OLD)
endif()

project(hex_ros_msgs)

set(X_ROS_VERSION $ENV{ROS_VERSION})
message(STATUS "Your ROS version is ROS${X_ROS_VERSION}")
add_definitions(-DX_ROS_VERSION=${X_ROS_VERSION})

if(${X_ROS_VERSION} STREQUAL "1")

    find_package(catkin REQUIRED COMPONENTS
        message_generation
        roscpp
        rospy
        std_msgs
        sensor_msgs
        geometry_msgs
        nav_msgs
    )

    add_message_files(
        FILES
        HexRosJnt.msg
        HexRosRoboArmCtrl.msg
        HexRosRoboArmCtrlStamped.msg
        HexRosRoboArmState.msg
        HexRosRoboArmStateStamped.msg
        HexRosRoboChsCtrl.msg
        HexRosRoboChsCtrlStamped.msg
        HexRosRoboChsState.msg
        HexRosRoboChsStateStamped.msg
        HexRosRoboGripCtrl.msg
        HexRosRoboGripCtrlStamped.msg
        HexRosRoboGripState.msg
        HexRosRoboGripStateStamped.msg
        HexRosRoboLiftCtrl.msg
        HexRosRoboLiftCtrlStamped.msg
        HexRosRoboLiftState.msg
        HexRosRoboLiftStateStamped.msg
        HexRosRoboManipCtrl.msg
        HexRosRoboManipCtrlStamped.msg
        HexRosRoboManipState.msg
        HexRosRoboManipStateStamped.msg
        HexRosTeleopHandleCtrl.msg
        HexRosTeleopHandleCtrlStamped.msg
        HexRosTeleopHandleState.msg
        HexRosTeleopHandleStateStamped.msg
        HexRosTeleopJoystickState.msg
        HexRosTeleopJoystickStateStamped.msg
        HexRosTeleopKeyboardState.msg
        HexRosTeleopKeyboardStateStamped.msg
    )

    generate_messages(
        DEPENDENCIES
        std_msgs
        sensor_msgs
        geometry_msgs
        nav_msgs
    )

    catkin_package(
        CATKIN_DEPENDS roscpp rospy std_msgs sensor_msgs geometry_msgs nav_msgs message_runtime
    )

elseif(${X_ROS_VERSION} STREQUAL "2")

    find_package(ament_cmake REQUIRED)
    find_package(rclcpp REQUIRED)
    find_package(builtin_interfaces REQUIRED)
    find_package(std_msgs REQUIRED)
    find_package(geometry_msgs REQUIRED)
    find_package(sensor_msgs REQUIRED)
    find_package(nav_msgs REQUIRED)
    find_package(rosidl_default_generators REQUIRED)

    rosidl_generate_interfaces(${PROJECT_NAME}
        "msg/HexRosJnt.msg"
        "msg/HexRosRoboArmCtrl.msg"
        "msg/HexRosRoboArmCtrlStamped.msg"
        "msg/HexRosRoboArmState.msg"
        "msg/HexRosRoboArmStateStamped.msg"
        "msg/HexRosRoboChsCtrl.msg"
        "msg/HexRosRoboChsCtrlStamped.msg"
        "msg/HexRosRoboChsState.msg"
        "msg/HexRosRoboChsStateStamped.msg"
        "msg/HexRosRoboGripCtrl.msg"
        "msg/HexRosRoboGripCtrlStamped.msg"
        "msg/HexRosRoboGripState.msg"
        "msg/HexRosRoboGripStateStamped.msg"
        "msg/HexRosRoboLiftCtrl.msg"
        "msg/HexRosRoboLiftCtrlStamped.msg"
        "msg/HexRosRoboLiftState.msg"
        "msg/HexRosRoboLiftStateStamped.msg"
        "msg/HexRosRoboManipCtrl.msg"
        "msg/HexRosRoboManipCtrlStamped.msg"
        "msg/HexRosRoboManipState.msg"
        "msg/HexRosRoboManipStateStamped.msg"
        "msg/HexRosTeleopHandleCtrl.msg"
        "msg/HexRosTeleopHandleCtrlStamped.msg"
        "msg/HexRosTeleopHandleState.msg"
        "msg/HexRosTeleopHandleStateStamped.msg"
        "msg/HexRosTeleopJoystickState.msg"
        "msg/HexRosTeleopJoystickStateStamped.msg"
        "msg/HexRosTeleopKeyboardState.msg"
        "msg/HexRosTeleopKeyboardStateStamped.msg"
        DEPENDENCIES builtin_interfaces sensor_msgs nav_msgs geometry_msgs std_msgs
    )

    ament_package()

else()
    message(FATAL_ERROR "Unknown ROS version, please install the ros_environment package")
endif()
