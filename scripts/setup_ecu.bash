#!/bin/bash

fix_rclcpp_for_library () {
    pcl_ros_cmake="/opt/ros/humble/share/pcl_ros/cmake/export_pcl_rosExport.cmake"
    if [ -f $pcl_ros_cmake ]; then
        sudo cp $pcl_ros_cmake $pcl_ros_cmake".bak"
        sudo sed -i -e 's/\/opt\/ros\/humble\/lib\/libtracetools.so;//g' $pcl_ros_cmake
    fi
}

fix_rclcpp_for_library
