#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "my_cmake_project::sum_numbers" for configuration ""
set_property(TARGET my_cmake_project::sum_numbers APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(my_cmake_project::sum_numbers PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsum_numbers.a"
  )

list(APPEND _cmake_import_check_targets my_cmake_project::sum_numbers )
list(APPEND _cmake_import_check_files_for_my_cmake_project::sum_numbers "${_IMPORT_PREFIX}/lib/libsum_numbers.a" )

# Import target "my_cmake_project::fuck_sheep" for configuration ""
set_property(TARGET my_cmake_project::fuck_sheep APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(my_cmake_project::fuck_sheep PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfuck_sheep.a"
  )

list(APPEND _cmake_import_check_targets my_cmake_project::fuck_sheep )
list(APPEND _cmake_import_check_files_for_my_cmake_project::fuck_sheep "${_IMPORT_PREFIX}/lib/libfuck_sheep.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
