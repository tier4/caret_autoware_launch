#!/bin/bash
set -e

backup_date="`date +"%Y%m%d_%H%M%S"`"

fix_ament_cmake_auto () {
    target_file="/opt/ros/humble/share/ament_cmake_auto/cmake/ament_auto_add_executable.cmake"
    if [ -f $target_file ]; then
        sudo cp $target_file $target_file".bak."$backup_date
        sudo sed -i -e 's/SYSTEM//g' $target_file
    fi

    target_file="/opt/ros/humble/share/ament_cmake_auto/cmake/ament_auto_add_library.cmake"
    if [ -f $target_file ]; then
        sudo cp $target_file $target_file".bak."$backup_date
        sudo sed -i -e 's/SYSTEM//g' $target_file
    fi
}

fix_pcl_ros () {
    target_file="/opt/ros/humble/share/pcl_ros/cmake/export_pcl_rosExport.cmake"
    if [ -f $target_file ]; then
        sudo cp $target_file $target_file".bak."$backup_date
        sudo sed -i -e 's/\/opt\/ros\/humble\/lib\/libtracetools.so;//g' $target_file
        sudo sed -i -e 's/\/opt\/ros\/humble\/include\/rclcpp;//g' $target_file
    fi

}

fix_ament_cmake_auto
fix_pcl_ros
