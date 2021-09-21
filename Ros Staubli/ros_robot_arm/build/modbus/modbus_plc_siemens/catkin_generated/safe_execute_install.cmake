execute_process(COMMAND "/home/aip/ros_robot_arm/build/modbus/modbus_plc_siemens/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/aip/ros_robot_arm/build/modbus/modbus_plc_siemens/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
