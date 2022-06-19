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
CMAKE_BINARY_DIR = /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug

# Include any dependencies generated for this target.
include src/parser/CMakeFiles/parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/parser/CMakeFiles/parser.dir/compiler_depend.make

# Include the progress variables for this target.
include src/parser/CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include src/parser/CMakeFiles/parser.dir/flags.make

src/parser/CMakeFiles/parser.dir/parser.cpp.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parser.cpp.o: ../../src/parser/parser.cpp
src/parser/CMakeFiles/parser.dir/parser.cpp.o: src/parser/CMakeFiles/parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/parser/CMakeFiles/parser.dir/parser.cpp.o"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/parser/CMakeFiles/parser.dir/parser.cpp.o -MF CMakeFiles/parser.dir/parser.cpp.o.d -o CMakeFiles/parser.dir/parser.cpp.o -c /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/src/parser/parser.cpp

src/parser/CMakeFiles/parser.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parser.cpp.i"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/src/parser/parser.cpp > CMakeFiles/parser.dir/parser.cpp.i

src/parser/CMakeFiles/parser.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parser.cpp.s"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/src/parser/parser.cpp -o CMakeFiles/parser.dir/parser.cpp.s

# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/parser.cpp.o"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

src/parser/libparser.a: src/parser/CMakeFiles/parser.dir/parser.cpp.o
src/parser/libparser.a: src/parser/CMakeFiles/parser.dir/build.make
src/parser/libparser.a: src/parser/CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libparser.a"
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean_target.cmake
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/parser/CMakeFiles/parser.dir/build: src/parser/libparser.a
.PHONY : src/parser/CMakeFiles/parser.dir/build

src/parser/CMakeFiles/parser.dir/clean:
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : src/parser/CMakeFiles/parser.dir/clean

src/parser/CMakeFiles/parser.dir/depend:
	cd /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/src/parser /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser /Users/workspace/Desktop/nand2tetris/mytools/hack-assembler-cmake/build/build-debug/src/parser/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/parser/CMakeFiles/parser.dir/depend

