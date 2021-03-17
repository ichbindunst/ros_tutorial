# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rostopic_examples: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irostopic_examples:/home/yao/ros_tutorials/src/rostopic_examples/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rostopic_examples_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_custom_target(_rostopic_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostopic_examples" "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rostopic_examples
  "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostopic_examples
)

### Generating Services

### Generating Module File
_generate_module_cpp(rostopic_examples
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostopic_examples
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rostopic_examples_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rostopic_examples_generate_messages rostopic_examples_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_dependencies(rostopic_examples_generate_messages_cpp _rostopic_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostopic_examples_gencpp)
add_dependencies(rostopic_examples_gencpp rostopic_examples_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostopic_examples_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rostopic_examples
  "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostopic_examples
)

### Generating Services

### Generating Module File
_generate_module_eus(rostopic_examples
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostopic_examples
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rostopic_examples_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rostopic_examples_generate_messages rostopic_examples_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_dependencies(rostopic_examples_generate_messages_eus _rostopic_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostopic_examples_geneus)
add_dependencies(rostopic_examples_geneus rostopic_examples_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostopic_examples_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rostopic_examples
  "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostopic_examples
)

### Generating Services

### Generating Module File
_generate_module_lisp(rostopic_examples
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostopic_examples
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rostopic_examples_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rostopic_examples_generate_messages rostopic_examples_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_dependencies(rostopic_examples_generate_messages_lisp _rostopic_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostopic_examples_genlisp)
add_dependencies(rostopic_examples_genlisp rostopic_examples_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostopic_examples_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rostopic_examples
  "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostopic_examples
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rostopic_examples
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostopic_examples
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rostopic_examples_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rostopic_examples_generate_messages rostopic_examples_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_dependencies(rostopic_examples_generate_messages_nodejs _rostopic_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostopic_examples_gennodejs)
add_dependencies(rostopic_examples_gennodejs rostopic_examples_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostopic_examples_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rostopic_examples
  "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostopic_examples
)

### Generating Services

### Generating Module File
_generate_module_py(rostopic_examples
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostopic_examples
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rostopic_examples_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rostopic_examples_generate_messages rostopic_examples_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yao/ros_tutorials/src/rostopic_examples/msg/Person.msg" NAME_WE)
add_dependencies(rostopic_examples_generate_messages_py _rostopic_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostopic_examples_genpy)
add_dependencies(rostopic_examples_genpy rostopic_examples_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostopic_examples_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostopic_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostopic_examples
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rostopic_examples_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostopic_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostopic_examples
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rostopic_examples_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostopic_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostopic_examples
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rostopic_examples_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostopic_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostopic_examples
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rostopic_examples_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostopic_examples)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostopic_examples\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostopic_examples
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rostopic_examples_generate_messages_py std_msgs_generate_messages_py)
endif()
