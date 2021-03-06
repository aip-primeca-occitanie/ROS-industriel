# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aiguillages: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iaiguillages:/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aiguillages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_custom_target(_aiguillages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aiguillages" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_custom_target(_aiguillages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aiguillages" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" ""
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_custom_target(_aiguillages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aiguillages" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_custom_target(_aiguillages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aiguillages" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
)
_generate_msg_cpp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
)
_generate_msg_cpp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
)
_generate_msg_cpp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
)

### Generating Services

### Generating Module File
_generate_module_cpp(aiguillages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aiguillages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aiguillages_generate_messages aiguillages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_cpp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_cpp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_cpp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_cpp _aiguillages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aiguillages_gencpp)
add_dependencies(aiguillages_gencpp aiguillages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aiguillages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
)
_generate_msg_eus(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
)
_generate_msg_eus(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
)
_generate_msg_eus(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
)

### Generating Services

### Generating Module File
_generate_module_eus(aiguillages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aiguillages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aiguillages_generate_messages aiguillages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_eus _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_eus _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_eus _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_eus _aiguillages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aiguillages_geneus)
add_dependencies(aiguillages_geneus aiguillages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aiguillages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
)
_generate_msg_lisp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
)
_generate_msg_lisp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
)
_generate_msg_lisp(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
)

### Generating Services

### Generating Module File
_generate_module_lisp(aiguillages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aiguillages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aiguillages_generate_messages aiguillages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_lisp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_lisp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_lisp _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_lisp _aiguillages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aiguillages_genlisp)
add_dependencies(aiguillages_genlisp aiguillages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aiguillages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
)
_generate_msg_nodejs(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
)
_generate_msg_nodejs(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
)
_generate_msg_nodejs(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
)

### Generating Services

### Generating Module File
_generate_module_nodejs(aiguillages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aiguillages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aiguillages_generate_messages aiguillages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_nodejs _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_nodejs _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_nodejs _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_nodejs _aiguillages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aiguillages_gennodejs)
add_dependencies(aiguillages_gennodejs aiguillages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aiguillages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
)
_generate_msg_py(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
)
_generate_msg_py(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
)
_generate_msg_py(aiguillages
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
)

### Generating Services

### Generating Module File
_generate_module_py(aiguillages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aiguillages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aiguillages_generate_messages aiguillages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/ExchangeSh.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_py _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Capteurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_py _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Msg_SensorState.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_py _aiguillages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/aiguillages/msg/Actionneurs.msg" NAME_WE)
add_dependencies(aiguillages_generate_messages_py _aiguillages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aiguillages_genpy)
add_dependencies(aiguillages_genpy aiguillages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aiguillages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aiguillages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aiguillages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aiguillages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aiguillages_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aiguillages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aiguillages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aiguillages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aiguillages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aiguillages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aiguillages_generate_messages_py std_msgs_generate_messages_py)
endif()
