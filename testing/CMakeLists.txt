add_executable(test test.cpp)

target_link_libraries(test my_cmake_project::sum_numbers)

install(TARGETS test
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
