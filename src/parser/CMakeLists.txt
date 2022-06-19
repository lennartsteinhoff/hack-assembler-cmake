cmake_minimum_required(VERSION 3.0.0)

add_library(parser parser.cpp)


target_include_directories(parser PUBLIC
                           ${PROJECT_SOURCE_DIR}/include
                           )