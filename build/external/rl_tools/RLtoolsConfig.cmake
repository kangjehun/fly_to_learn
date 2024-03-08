cmake_policy(SET CMP0012 NEW)
if("OFF")
    find_package(mujoco REQUIRED)
    if("")
        message(STATUS "mujoco ui enabled")
        find_package(glfw3 REQUIRED)
    endif()
endif()

if("ON")
    find_package(MKL REQUIRED)
endif()

if("OFF")
    find_package(BLAS REQUIRED)
endif()

if("")
    find_package(BLAS REQUIRED)
endif()

if("OFF")
    find_package(CUDAToolkit REQUIRED)
endif()

if("ON")
    find_package(HighFive REQUIRED)
endif()

if("ON")
	find_package(Protobuf REQUIRED)
    find_package(tensorboard_logger REQUIRED)
endif()
if("ON")
    find_package(nlohmann_json REQUIRED)
endif()
if("ON")
    find_package(Boost REQUIRED)
endif()

if("OFF")
    find_package(PkgConfig REQUIRED)
    pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
endif()



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was RLtoolsConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################
include("${CMAKE_CURRENT_LIST_DIR}/RLtoolsTargets.cmake")
check_required_components(""RLtools"")
