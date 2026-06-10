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

if (${X_ROS_VERSION} STREQUAL "1")

    find_package(catkin REQUIRED COMPONENTS
        message_generation
        roscpp
        rospy
        std_msgs
        sensor_msgs
        nav_msgs
    )

    add_message_files(
        FILES
        XmsgArmJointParam.msg
        XmsgArmJointParamList.msg
    )

    generate_messages(
        DEPENDENCIES
        std_msgs
        sensor_msgs
        nav_msgs
    )

    catkin_package(
        CATKIN_DEPENDS roscpp rospy std_msgs sensor_msgs nav_msgs message_runtime
    )

elseif (${X_ROS_VERSION} STREQUAL "2")

    find_package(ament_cmake REQUIRED)
    find_package(rclcpp REQUIRED)
    find_package(builtin_interfaces REQUIRED)
    find_package(rosidl_default_generators REQUIRED)

    rosidl_generate_interfaces(${PROJECT_NAME}
        "msg/XmsgArmJointParam.msg"
        "msg/XmsgArmJointParamList.msg"
        DEPENDENCIES builtin_interfaces
    )

    ament_package()

else ()
    message(FATAL_ERROR "Unknown ROS version, please install the ros_environment package")
endif ()
