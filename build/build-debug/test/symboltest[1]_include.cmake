if(EXISTS "/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/test/symboltest[1]_tests.cmake")
  include("/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/test/symboltest[1]_tests.cmake")
else()
  add_test(symboltest_NOT_BUILT symboltest_NOT_BUILT)
endif()
