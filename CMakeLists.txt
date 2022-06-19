cmake_minimum_required(VERSION 3.0.0)
project(hack_assembler VERSION 1.0)


configure_file(TutorialConfig.h.in TutorialConfig.h)


set (CMAKE_CXX_STANDARD 11)
enable_testing()
add_subdirectory(googletest)


#set(CPACK_PROJECT_NAME ${PROJECT_NAME})

add_subdirectory(src/parser)
add_subdirectory(src/symboltable)
add_subdirectory(src/code)
add_subdirectory(test)

file(COPY test/testfiles DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/test)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} PUBLIC parser symboltable code)

target_include_directories(${PROJECT_NAME} PUBLIC
                           ${PROJECT_BINARY_DIR}
                           ${PROJECT_SOURCE_DIR}/include
                           )




#include(CPack)
