# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/arcsenius/university/system_programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arcsenius/university/system_programming/build

# Include any dependencies generated for this target.
include CMakeFiles/task1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/task1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/task1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task1.dir/flags.make

CMakeFiles/task1.dir/codegen:
.PHONY : CMakeFiles/task1.dir/codegen

CMakeFiles/task1.dir/pack1/task1/main.c.o: CMakeFiles/task1.dir/flags.make
CMakeFiles/task1.dir/pack1/task1/main.c.o: /home/arcsenius/university/system_programming/pack1/task1/main.c
CMakeFiles/task1.dir/pack1/task1/main.c.o: CMakeFiles/task1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/arcsenius/university/system_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/task1.dir/pack1/task1/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/task1.dir/pack1/task1/main.c.o -MF CMakeFiles/task1.dir/pack1/task1/main.c.o.d -o CMakeFiles/task1.dir/pack1/task1/main.c.o -c /home/arcsenius/university/system_programming/pack1/task1/main.c

CMakeFiles/task1.dir/pack1/task1/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/task1.dir/pack1/task1/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arcsenius/university/system_programming/pack1/task1/main.c > CMakeFiles/task1.dir/pack1/task1/main.c.i

CMakeFiles/task1.dir/pack1/task1/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/task1.dir/pack1/task1/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arcsenius/university/system_programming/pack1/task1/main.c -o CMakeFiles/task1.dir/pack1/task1/main.c.s

# Object files for target task1
task1_OBJECTS = \
"CMakeFiles/task1.dir/pack1/task1/main.c.o"

# External object files for target task1
task1_EXTERNAL_OBJECTS =

pack1/task1: CMakeFiles/task1.dir/pack1/task1/main.c.o
pack1/task1: CMakeFiles/task1.dir/build.make
pack1/task1: CMakeFiles/task1.dir/compiler_depend.ts
pack1/task1: liblibauth.a
pack1/task1: liblibdata.a
pack1/task1: liblibparse.a
pack1/task1: CMakeFiles/task1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/arcsenius/university/system_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pack1/task1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task1.dir/build: pack1/task1
.PHONY : CMakeFiles/task1.dir/build

CMakeFiles/task1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task1.dir/clean

CMakeFiles/task1.dir/depend:
	cd /home/arcsenius/university/system_programming/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arcsenius/university/system_programming /home/arcsenius/university/system_programming /home/arcsenius/university/system_programming/build /home/arcsenius/university/system_programming/build /home/arcsenius/university/system_programming/build/CMakeFiles/task1.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/task1.dir/depend

