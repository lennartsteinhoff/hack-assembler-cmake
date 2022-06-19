add_test([=[CodeTest.Test1]=]  /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/test/codetest [==[--gtest_filter=CodeTest.Test1]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[CodeTest.Test1]=]  PROPERTIES WORKING_DIRECTORY /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/test SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  codetest_TESTS CodeTest.Test1)
