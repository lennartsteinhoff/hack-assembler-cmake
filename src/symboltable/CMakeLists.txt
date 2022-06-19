cmake_minimum_required(VERSION 3.0.0)

add_library(symboltable symboltable.cpp)


target_include_directories(symboltable PUBLIC
                           ${PROJECT_SOURCE_DIR}/include
                           )