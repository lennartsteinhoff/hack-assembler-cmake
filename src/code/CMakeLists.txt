cmake_minimum_required(VERSION 3.0.0)

add_library(code code.cpp)


target_include_directories(code PUBLIC
                           ${PROJECT_SOURCE_DIR}/include
                           )