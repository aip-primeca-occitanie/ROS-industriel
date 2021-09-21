# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "shuttles: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ishuttles:/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(shuttles_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_custom_target(_shuttles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shuttles" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" ""
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_custom_target(_shuttles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shuttles" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" ""
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_custom_target(_shuttles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shuttles" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" ""
)

get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_custom_target(_shuttles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shuttles" "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
)
_generate_msg_cpp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
)
_generate_msg_cpp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
)

### Generating Services
_generate_srv_cpp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
)

### Generating Module File
_generate_module_cpp(shuttles
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(shuttles_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(shuttles_generate_messages shuttles_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_cpp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_cpp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_dependencies(shuttles_generate_messages_cpp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_cpp _shuttles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shuttles_gencpp)
add_dependencies(shuttles_gencpp shuttles_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shuttles_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
)
_generate_msg_eus(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
)
_generate_msg_eus(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
)

### Generating Services
_generate_srv_eus(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
)

### Generating Module File
_generate_module_eus(shuttles
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(shuttles_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(shuttles_generate_messages shuttles_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_eus _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_eus _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_dependencies(shuttles_generate_messages_eus _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_eus _shuttles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shuttles_geneus)
add_dependencies(shuttles_geneus shuttles_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shuttles_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
)
_generate_msg_lisp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
)
_generate_msg_lisp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
)

### Generating Services
_generate_srv_lisp(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
)

### Generating Module File
_generate_module_lisp(shuttles
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(shuttles_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(shuttles_generate_messages shuttles_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_lisp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_lisp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_dependencies(shuttles_generate_messages_lisp _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_lisp _shuttles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shuttles_genlisp)
add_dependencies(shuttles_genlisp shuttles_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shuttles_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
)
_generate_msg_nodejs(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
)
_generate_msg_nodejs(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
)

### Generating Services
_generate_srv_nodejs(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
)

### Generating Module File
_generate_module_nodejs(shuttles
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(shuttles_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(shuttles_generate_messages shuttles_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_nodejs _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_nodejs _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_dependencies(shuttles_generate_messages_nodejs _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_nodejs _shuttles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shuttles_gennodejs)
add_dependencies(shuttles_gennodejs shuttles_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shuttles_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
)
_generate_msg_py(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
)
_generate_msg_py(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
)

### Generating Services
_generate_srv_py(shuttles
  "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
)

### Generating Module File
_generate_module_py(shuttles
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(shuttles_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(shuttles_generate_messages shuttles_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/Msg_Erreur.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_py _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleChange.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_py _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/srv/shuttle_id.srv" NAME_WE)
add_dependencies(shuttles_generate_messages_py _shuttles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aip/ros_robot_arm/src/cellule2021/TERcelluleflexible/celluleflexible/ros_ws/src/shuttles/msg/msgShuttleCreate.msg" NAME_WE)
add_dependencies(shuttles_generate_messages_py _shuttles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shuttles_genpy)
add_dependencies(shuttles_genpy shuttles_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shuttles_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shuttles
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(shuttles_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shuttles
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(shuttles_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shuttles
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(shuttles_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shuttles
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(shuttles_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shuttles
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(shuttles_generate_messages_py std_msgs_generate_messages_py)
endif()
