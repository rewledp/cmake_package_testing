cmake_minimum_required(VERSION 3.16)
project(my_cmake_project VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_INSTALL_PREFIX "C:/msys64/ucrt64")
# set(CMAKE_INSTALL_PREFIX "C:/Users/perdo/Downloads/cmake_test_modules/AnotherTestMod")

include(GNUInstallDirs)

add_subdirectory(component1)
add_subdirectory(testing)

include(CMakePackageConfigHelpers)

configure_package_config_file(
	"Config.cmake.in" "${PROJECT_NAME}Config.cmake"
	# INSTALL_DESTINATION share/cmake/${PROJECT_NAME}
	INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

write_basic_package_version_file(
	"${PROJECT_NAME}ConfigVersion.cmake"
	VERSION ${PROJECT_VERSION}
	COMPATIBILITY AnyNewerVersion
)

install(
	FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
	"${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"

	DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)
