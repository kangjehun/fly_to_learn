# Install script for directory: /home/usrg/jehun/fly_to_learn/external/rl_tools/src/rl/environments/pendulum/td3/cpu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/rl_tools/bin" TYPE EXECUTABLE FILES "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/src/rl/environments/pendulum/td3/cpu/rl_environments_pendulum_td3_training_bare")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_bare")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/rl_tools/bin" TYPE EXECUTABLE FILES "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/src/rl/environments/pendulum/td3/cpu/rl_environments_pendulum_td3_training_standalone")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_standalone")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/rl_tools/bin" TYPE EXECUTABLE FILES "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/src/rl/environments/pendulum/td3/cpu/rl_environments_pendulum_td3_training_blas")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/rl_tools/bin" TYPE EXECUTABLE FILES "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/src/rl/environments/pendulum/td3/cpu/rl_environments_pendulum_td3_training_blas_benchmark")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_benchmark")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/rl_tools/bin" TYPE EXECUTABLE FILES "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/src/rl/environments/pendulum/td3/cpu/rl_environments_pendulum_td3_training_blas_tensorboard")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/rl_tools/bin/rl_environments_pendulum_td3_training_blas_tensorboard")
    endif()
  endif()
endif()

