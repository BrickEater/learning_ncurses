# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/goblin/Repos/100_projects_C/p14

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/goblin/Repos/100_projects_C/p14/build

# Include any dependencies generated for this target.
include CMakeFiles/goblin_mouse.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/goblin_mouse.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/goblin_mouse.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/goblin_mouse.dir/flags.make

CMakeFiles/goblin_mouse.dir/src/main.c.o: CMakeFiles/goblin_mouse.dir/flags.make
CMakeFiles/goblin_mouse.dir/src/main.c.o: /home/goblin/Repos/100_projects_C/p14/src/main.c
CMakeFiles/goblin_mouse.dir/src/main.c.o: CMakeFiles/goblin_mouse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p14/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/goblin_mouse.dir/src/main.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/goblin_mouse.dir/src/main.c.o -MF CMakeFiles/goblin_mouse.dir/src/main.c.o.d -o CMakeFiles/goblin_mouse.dir/src/main.c.o -c /home/goblin/Repos/100_projects_C/p14/src/main.c

CMakeFiles/goblin_mouse.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/goblin_mouse.dir/src/main.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p14/src/main.c > CMakeFiles/goblin_mouse.dir/src/main.c.i

CMakeFiles/goblin_mouse.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/goblin_mouse.dir/src/main.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p14/src/main.c -o CMakeFiles/goblin_mouse.dir/src/main.c.s

# Object files for target goblin_mouse
goblin_mouse_OBJECTS = \
"CMakeFiles/goblin_mouse.dir/src/main.c.o"

# External object files for target goblin_mouse
goblin_mouse_EXTERNAL_OBJECTS =

goblin_mouse: CMakeFiles/goblin_mouse.dir/src/main.c.o
goblin_mouse: CMakeFiles/goblin_mouse.dir/build.make
goblin_mouse: CMakeFiles/goblin_mouse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/goblin/Repos/100_projects_C/p14/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable goblin_mouse"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/goblin_mouse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/goblin_mouse.dir/build: goblin_mouse
.PHONY : CMakeFiles/goblin_mouse.dir/build

CMakeFiles/goblin_mouse.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/goblin_mouse.dir/cmake_clean.cmake
.PHONY : CMakeFiles/goblin_mouse.dir/clean

CMakeFiles/goblin_mouse.dir/depend:
	cd /home/goblin/Repos/100_projects_C/p14/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/goblin/Repos/100_projects_C/p14 /home/goblin/Repos/100_projects_C/p14 /home/goblin/Repos/100_projects_C/p14/build /home/goblin/Repos/100_projects_C/p14/build /home/goblin/Repos/100_projects_C/p14/build/CMakeFiles/goblin_mouse.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/goblin_mouse.dir/depend
