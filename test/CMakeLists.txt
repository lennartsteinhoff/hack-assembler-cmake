cmake_minimum_required(VERSION 3.23)


set(PARSERTEST parsertest)
set(CODETEST codetest)
set(SYMBOLTEST symboltest)


enable_testing()

include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(${PARSERTEST} parser_test.cpp)
add_executable(${CODETEST} code_test.cpp)
add_executable(${SYMBOLTEST} symboltable_test.cpp)
#add_executable(${SYMBOLTEST} symbol_test.cpp)

#target_include_directories(${PROJECT_NAME} PUBLIC
#                           ${PROJECT_SOURCE_DIR}
#                           ${PROJECT_SOURCE_DIR}/src/parser
#                           )




target_link_libraries(${PARSERTEST} PUBLIC 
    gtest_main
    parser
)

target_link_libraries(${CODETEST} PUBLIC 
    gtest_main
    code
)

target_link_libraries(${SYMBOLTEST} PUBLIC 
    gtest_main
    symboltable
)

include(GoogleTest)
gtest_discover_tests(${PARSERTEST} ${CODETEST} ${SYMBOLTEST})
gtest_discover_tests(${CODETEST} )
gtest_discover_tests(${SYMBOLTEST})
