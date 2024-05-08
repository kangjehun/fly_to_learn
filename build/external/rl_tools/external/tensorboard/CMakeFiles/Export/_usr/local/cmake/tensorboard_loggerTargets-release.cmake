#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tensorboard_logger::tensorboard_logger" for configuration "Release"
set_property(TARGET tensorboard_logger::tensorboard_logger APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(tensorboard_logger::tensorboard_logger PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtensorboard_logger.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS tensorboard_logger::tensorboard_logger )
list(APPEND _IMPORT_CHECK_FILES_FOR_tensorboard_logger::tensorboard_logger "${_IMPORT_PREFIX}/lib/libtensorboard_logger.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
