
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

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

# set(_SUM_NUMBER_COMPONENT "sum_numbers_export.cmake")
# set(_FUCK_SHEEP_COMPONENT "fuck_sheep_export.cmake")
#
# include("${CMAKE_CURRENT_LIST_DIR}/${_SUM_NUMBER_COMPONENT}")
#
# if(NOT ${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS)
# 	include("${CMAKE_CURRENT_LIST_DIR}/${_SUM_NUMBER_COMPONENT}")
# 	set(${CMAKE_FIND_PACKAGE_NAME}_sum_numbers_FOUND TRUE)
# else()
# 	foreach(_comp ${${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS})
# 		if (_comp STREQUAL "sum_numbers")
# 			include("${CMAKE_CURRENT_LIST_DIR}/${_SUM_NUMBER_COMPONENT}")
# 			set(${CMAKE_FIND_PACKAGE_NAME}_${_comp}_FOUND TRUE)
# 		elseif(_comp STREQUAL "fuck_sheep")
# 			include("${CMAKE_CURRENT_LIST_DIR}/${_FUCK_SHEEP_COMPONENT}")
# 			set(${CMAKE_FIND_PACKAGE_NAME}_${_comp}_FOUND TRUE)
# 		else()
# 			set(${CMAKE_FIND_PACKAGE_NAME}_${_comp}_FOUND FALSE)
# 			# set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "Unsupported component: ${_comp}")
# 		endif()
# 	endforeach()
# endif()

include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}_targets_export.cmake")

foreach(_comp ${${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS})
	if(TARGET ${CMAKE_FIND_PACKAGE_NAME}::${_comp})
		set(${CMAKE_FIND_PACKAGE_NAME}_${_comp}_FOUND TRUE)
	endif()
endforeach()

check_required_components(${CMAKE_FIND_PACKAGE_NAME})
