execute_process(COMMAND "/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_testsuite/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/aubailly/Bureau/RobMob/build/kobuki/kobuki_testsuite/catkin_generated/python_distutils_install.sh) returned error code ")
endif()