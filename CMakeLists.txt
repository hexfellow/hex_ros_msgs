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
        HexJnt.msg
        HexRoboArmCtrl.msg
        HexRoboArmCtrlStamped.msg
        HexRoboArmState.msg
        HexRoboArmStateStamped.msg
        HexRoboChsCtrl.msg
        HexRoboChsCtrlStamped.msg
        HexRoboChsState.msg
        HexRoboChsStateStamped.msg
        HexRoboGripCtrl.msg
        HexRoboGripCtrlStamped.msg
        HexRoboGripState.msg
        HexRoboGripStateStamped.msg
        HexRoboLiftCtrl.msg
        HexRoboLiftCtrlStamped.msg
        HexRoboLiftState.msg
        HexRoboLiftStateStamped.msg
        HexRoboManipCtrl.msg
        HexRoboManipCtrlStamped.msg
        HexRoboManipState.msg
        HexRoboManipStateStamped.msg
        HexTeleopHandleCtrl.msg
        HexTeleopHandleCtrlStamped.msg
        HexTeleopHandleState.msg
        HexTeleopHandleStateStamped.msg
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
        "msg/HexJnt.msg"
        "msg/HexRoboArmCtrl.msg"
        "msg/HexRoboArmCtrlStamped.msg"
        "msg/HexRoboArmState.msg"
        "msg/HexRoboArmStateStamped.msg"
        "msg/HexRoboChsCtrl.msg"
        "msg/HexRoboChsCtrlStamped.msg"
        "msg/HexRoboChsState.msg"
        "msg/HexRoboChsStateStamped.msg"
        "msg/HexRoboGripCtrl.msg"
        "msg/HexRoboGripCtrlStamped.msg"
        "msg/HexRoboGripState.msg"
        "msg/HexRoboGripStateStamped.msg"
        "msg/HexRoboLiftCtrl.msg"
        "msg/HexRoboLiftCtrlStamped.msg"
        "msg/HexRoboLiftState.msg"
        "msg/HexRoboLiftStateStamped.msg"
        "msg/HexRoboManipCtrl.msg"
        "msg/HexRoboManipCtrlStamped.msg"
        "msg/HexRoboManipState.msg"
        "msg/HexRoboManipStateStamped.msg"
        "msg/HexTeleopHandleCtrl.msg"
        "msg/HexTeleopHandleCtrlStamped.msg"
        "msg/HexTeleopHandleState.msg"
        "msg/HexTeleopHandleStateStamped.msg"
        DEPENDENCIES builtin_interfaces sensor_msgs nav_msgs geometry_msgs std_msgs
    )

    ament_package()

else()
    message(FATAL_ERROR "Unknown ROS version, please install the ros_environment package")
endif()
