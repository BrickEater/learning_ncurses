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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/goblin/Repos/100_projects_C/p2_

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/goblin/Repos/100_projects_C/p2_/build

# Include any dependencies generated for this target.
include CMakeFiles/rogue.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rogue.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rogue.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rogue.dir/flags.make

CMakeFiles/rogue.dir/src/draw.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/draw.c.o: /home/goblin/Repos/100_projects_C/p2_/src/draw.c
CMakeFiles/rogue.dir/src/draw.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rogue.dir/src/draw.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/draw.c.o -MF CMakeFiles/rogue.dir/src/draw.c.o.d -o CMakeFiles/rogue.dir/src/draw.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/draw.c

CMakeFiles/rogue.dir/src/draw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/draw.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/draw.c > CMakeFiles/rogue.dir/src/draw.c.i

CMakeFiles/rogue.dir/src/draw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/draw.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/draw.c -o CMakeFiles/rogue.dir/src/draw.c.s

CMakeFiles/rogue.dir/src/engine.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/engine.c.o: /home/goblin/Repos/100_projects_C/p2_/src/engine.c
CMakeFiles/rogue.dir/src/engine.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rogue.dir/src/engine.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/engine.c.o -MF CMakeFiles/rogue.dir/src/engine.c.o.d -o CMakeFiles/rogue.dir/src/engine.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/engine.c

CMakeFiles/rogue.dir/src/engine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/engine.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/engine.c > CMakeFiles/rogue.dir/src/engine.c.i

CMakeFiles/rogue.dir/src/engine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/engine.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/engine.c -o CMakeFiles/rogue.dir/src/engine.c.s

CMakeFiles/rogue.dir/src/fov.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/fov.c.o: /home/goblin/Repos/100_projects_C/p2_/src/fov.c
CMakeFiles/rogue.dir/src/fov.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/rogue.dir/src/fov.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/fov.c.o -MF CMakeFiles/rogue.dir/src/fov.c.o.d -o CMakeFiles/rogue.dir/src/fov.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/fov.c

CMakeFiles/rogue.dir/src/fov.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/fov.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/fov.c > CMakeFiles/rogue.dir/src/fov.c.i

CMakeFiles/rogue.dir/src/fov.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/fov.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/fov.c -o CMakeFiles/rogue.dir/src/fov.c.s

CMakeFiles/rogue.dir/src/main.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/main.c.o: /home/goblin/Repos/100_projects_C/p2_/src/main.c
CMakeFiles/rogue.dir/src/main.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/rogue.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/main.c.o -MF CMakeFiles/rogue.dir/src/main.c.o.d -o CMakeFiles/rogue.dir/src/main.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/main.c

CMakeFiles/rogue.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/main.c > CMakeFiles/rogue.dir/src/main.c.i

CMakeFiles/rogue.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/main.c -o CMakeFiles/rogue.dir/src/main.c.s

CMakeFiles/rogue.dir/src/map.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/map.c.o: /home/goblin/Repos/100_projects_C/p2_/src/map.c
CMakeFiles/rogue.dir/src/map.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/rogue.dir/src/map.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/map.c.o -MF CMakeFiles/rogue.dir/src/map.c.o.d -o CMakeFiles/rogue.dir/src/map.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/map.c

CMakeFiles/rogue.dir/src/map.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/map.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/map.c > CMakeFiles/rogue.dir/src/map.c.i

CMakeFiles/rogue.dir/src/map.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/map.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/map.c -o CMakeFiles/rogue.dir/src/map.c.s

CMakeFiles/rogue.dir/src/player.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/player.c.o: /home/goblin/Repos/100_projects_C/p2_/src/player.c
CMakeFiles/rogue.dir/src/player.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/rogue.dir/src/player.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/player.c.o -MF CMakeFiles/rogue.dir/src/player.c.o.d -o CMakeFiles/rogue.dir/src/player.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/player.c

CMakeFiles/rogue.dir/src/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/player.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/player.c > CMakeFiles/rogue.dir/src/player.c.i

CMakeFiles/rogue.dir/src/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/player.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/player.c -o CMakeFiles/rogue.dir/src/player.c.s

CMakeFiles/rogue.dir/src/room.c.o: CMakeFiles/rogue.dir/flags.make
CMakeFiles/rogue.dir/src/room.c.o: /home/goblin/Repos/100_projects_C/p2_/src/room.c
CMakeFiles/rogue.dir/src/room.c.o: CMakeFiles/rogue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/rogue.dir/src/room.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rogue.dir/src/room.c.o -MF CMakeFiles/rogue.dir/src/room.c.o.d -o CMakeFiles/rogue.dir/src/room.c.o -c /home/goblin/Repos/100_projects_C/p2_/src/room.c

CMakeFiles/rogue.dir/src/room.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rogue.dir/src/room.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/goblin/Repos/100_projects_C/p2_/src/room.c > CMakeFiles/rogue.dir/src/room.c.i

CMakeFiles/rogue.dir/src/room.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rogue.dir/src/room.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/goblin/Repos/100_projects_C/p2_/src/room.c -o CMakeFiles/rogue.dir/src/room.c.s

# Object files for target rogue
rogue_OBJECTS = \
"CMakeFiles/rogue.dir/src/draw.c.o" \
"CMakeFiles/rogue.dir/src/engine.c.o" \
"CMakeFiles/rogue.dir/src/fov.c.o" \
"CMakeFiles/rogue.dir/src/main.c.o" \
"CMakeFiles/rogue.dir/src/map.c.o" \
"CMakeFiles/rogue.dir/src/player.c.o" \
"CMakeFiles/rogue.dir/src/room.c.o"

# External object files for target rogue
rogue_EXTERNAL_OBJECTS =

rogue: CMakeFiles/rogue.dir/src/draw.c.o
rogue: CMakeFiles/rogue.dir/src/engine.c.o
rogue: CMakeFiles/rogue.dir/src/fov.c.o
rogue: CMakeFiles/rogue.dir/src/main.c.o
rogue: CMakeFiles/rogue.dir/src/map.c.o
rogue: CMakeFiles/rogue.dir/src/player.c.o
rogue: CMakeFiles/rogue.dir/src/room.c.o
rogue: CMakeFiles/rogue.dir/build.make
rogue: CMakeFiles/rogue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable rogue"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rogue.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Symlinking compile_commands.json to project root"
	/usr/local/bin/cmake -E create_symlink /home/goblin/Repos/100_projects_C/p2_/build/compile_commands.json /home/goblin/Repos/100_projects_C/p2_/compile_commands.json

# Rule to build all files generated by this target.
CMakeFiles/rogue.dir/build: rogue
.PHONY : CMakeFiles/rogue.dir/build

CMakeFiles/rogue.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rogue.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rogue.dir/clean

CMakeFiles/rogue.dir/depend:
	cd /home/goblin/Repos/100_projects_C/p2_/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/goblin/Repos/100_projects_C/p2_ /home/goblin/Repos/100_projects_C/p2_ /home/goblin/Repos/100_projects_C/p2_/build /home/goblin/Repos/100_projects_C/p2_/build /home/goblin/Repos/100_projects_C/p2_/build/CMakeFiles/rogue.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rogue.dir/depend

