# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.23.1_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.23.1_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build

# Include any dependencies generated for this target.
include test/CMakeFiles/parsertest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/parsertest.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/parsertest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/parsertest.dir/flags.make

test/CMakeFiles/parsertest.dir/parser_test.cpp.o: test/CMakeFiles/parsertest.dir/flags.make
test/CMakeFiles/parsertest.dir/parser_test.cpp.o: ../test/parser_test.cpp
test/CMakeFiles/parsertest.dir/parser_test.cpp.o: test/CMakeFiles/parsertest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/parsertest.dir/parser_test.cpp.o"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/parsertest.dir/parser_test.cpp.o -MF CMakeFiles/parsertest.dir/parser_test.cpp.o.d -o CMakeFiles/parsertest.dir/parser_test.cpp.o -c /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/test/parser_test.cpp

test/CMakeFiles/parsertest.dir/parser_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parsertest.dir/parser_test.cpp.i"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/test/parser_test.cpp > CMakeFiles/parsertest.dir/parser_test.cpp.i

test/CMakeFiles/parsertest.dir/parser_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parsertest.dir/parser_test.cpp.s"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/test/parser_test.cpp -o CMakeFiles/parsertest.dir/parser_test.cpp.s

# Object files for target parsertest
parsertest_OBJECTS = \
"CMakeFiles/parsertest.dir/parser_test.cpp.o"

# External object files for target parsertest
parsertest_EXTERNAL_OBJECTS =

test/parsertest: test/CMakeFiles/parsertest.dir/parser_test.cpp.o
test/parsertest: test/CMakeFiles/parsertest.dir/build.make
test/parsertest: lib/libgtest_main.a
test/parsertest: src/parser/libparser.a
test/parsertest: lib/libgtest.a
test/parsertest: test/CMakeFiles/parsertest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable parsertest"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parsertest.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && /usr/local/Cellar/cmake/3.23.1_1/bin/cmake -D TEST_TARGET=parsertest -D TEST_EXECUTABLE=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test/parsertest -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=parsertest_TESTS -D CTEST_FILE=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test/parsertest[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/local/Cellar/cmake/3.23.1_1/share/cmake/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/CMakeFiles/parsertest.dir/build: test/parsertest
.PHONY : test/CMakeFiles/parsertest.dir/build

test/CMakeFiles/parsertest.dir/clean:
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test && $(CMAKE_COMMAND) -P CMakeFiles/parsertest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/parsertest.dir/clean

test/CMakeFiles/parsertest.dir/depend:
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/test /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/test/CMakeFiles/parsertest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/parsertest.dir/depend

