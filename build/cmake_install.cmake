# Install script for directory: /home/aubailly/Bureau/RobMob/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aubailly/Bureau/RobMob/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE PROGRAM FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE PROGRAM FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE FILE FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE FILE FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE FILE FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aubailly/Bureau/RobMob/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aubailly/Bureau/RobMob/install" TYPE FILE FILES "/home/aubailly/Bureau/RobMob/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/aubailly/Bureau/RobMob/build/gtest/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_capabilities/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_rapps/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/navigation/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation_msgs/move_base_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot/turtlebot/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_apps/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot/turtlebot_bringup/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot/turtlebot_capabilities/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_simulator/turtlebot_gazebo/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_rapps/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_simulator/turtlebot_simulator/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_simulator/turtlebot_stage/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_simulator/turtlebot_stdr/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_keyop/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/global_planner_short_path_student/navigation_stage_student_tp/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/map_server/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_auto_docking/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_bumper2pc/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation_msgs/map_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/local_planner_student/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/amcl/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_actions/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_calibration/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_msgs/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_follower/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot_apps/turtlebot_navigation/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot/turtlebot_teleop/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/nav_core/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/navfn/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/global_planner/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/navigation/move_base/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_description/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/turtlebot/turtlebot_description/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_ar_pair_approach/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_cmd_vel_mux/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_controllers/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_controller_tutorial/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_random_walker/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_safety_controller/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_keyop/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_localization_manager/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_math_toolkit/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_ar_marker_tracking/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_diff_drive_pose_controller/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_ar_pair_tracking/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_joyop/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_navi_toolkit/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_navigator/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_rapps/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_safety_controller/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_velocity_smoother/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_node/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_testsuite/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_virtual_sensor/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_waypoint_provider/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yocs_waypoints_navi/cmake_install.cmake")
  include("/home/aubailly/Bureau/RobMob/build/yujin_ocs/yujin_ocs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/aubailly/Bureau/RobMob/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
