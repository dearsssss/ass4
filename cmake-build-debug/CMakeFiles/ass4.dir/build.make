# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tamaki/CLionProjects/ass4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tamaki/CLionProjects/ass4/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ass4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ass4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ass4.dir/flags.make

CMakeFiles/ass4.dir/data.c.o: CMakeFiles/ass4.dir/flags.make
CMakeFiles/ass4.dir/data.c.o: ../data.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tamaki/CLionProjects/ass4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ass4.dir/data.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ass4.dir/data.c.o   -c /Users/tamaki/CLionProjects/ass4/data.c

CMakeFiles/ass4.dir/data.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ass4.dir/data.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tamaki/CLionProjects/ass4/data.c > CMakeFiles/ass4.dir/data.c.i

CMakeFiles/ass4.dir/data.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ass4.dir/data.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tamaki/CLionProjects/ass4/data.c -o CMakeFiles/ass4.dir/data.c.s

CMakeFiles/ass4.dir/bst.c.o: CMakeFiles/ass4.dir/flags.make
CMakeFiles/ass4.dir/bst.c.o: ../bst.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tamaki/CLionProjects/ass4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ass4.dir/bst.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ass4.dir/bst.c.o   -c /Users/tamaki/CLionProjects/ass4/bst.c

CMakeFiles/ass4.dir/bst.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ass4.dir/bst.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tamaki/CLionProjects/ass4/bst.c > CMakeFiles/ass4.dir/bst.c.i

CMakeFiles/ass4.dir/bst.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ass4.dir/bst.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tamaki/CLionProjects/ass4/bst.c -o CMakeFiles/ass4.dir/bst.c.s

# Object files for target ass4
ass4_OBJECTS = \
"CMakeFiles/ass4.dir/data.c.o" \
"CMakeFiles/ass4.dir/bst.c.o"

# External object files for target ass4
ass4_EXTERNAL_OBJECTS =

ass4: CMakeFiles/ass4.dir/data.c.o
ass4: CMakeFiles/ass4.dir/bst.c.o
ass4: CMakeFiles/ass4.dir/build.make
ass4: CMakeFiles/ass4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tamaki/CLionProjects/ass4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ass4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ass4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ass4.dir/build: ass4

.PHONY : CMakeFiles/ass4.dir/build

CMakeFiles/ass4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ass4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ass4.dir/clean

CMakeFiles/ass4.dir/depend:
	cd /Users/tamaki/CLionProjects/ass4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tamaki/CLionProjects/ass4 /Users/tamaki/CLionProjects/ass4 /Users/tamaki/CLionProjects/ass4/cmake-build-debug /Users/tamaki/CLionProjects/ass4/cmake-build-debug /Users/tamaki/CLionProjects/ass4/cmake-build-debug/CMakeFiles/ass4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ass4.dir/depend
