# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/share/code/cmake/Tutorial/demo2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/share/code/cmake/Tutorial/demo2/build

# Include any dependencies generated for this target.
include CMakeFiles/demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo.dir/flags.make

CMakeFiles/demo.dir/tutorial.cxx.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/tutorial.cxx.o: ../tutorial.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/share/code/cmake/Tutorial/demo2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/demo.dir/tutorial.cxx.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/demo.dir/tutorial.cxx.o -c /home/ubuntu/share/code/cmake/Tutorial/demo2/tutorial.cxx

CMakeFiles/demo.dir/tutorial.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/tutorial.cxx.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/share/code/cmake/Tutorial/demo2/tutorial.cxx > CMakeFiles/demo.dir/tutorial.cxx.i

CMakeFiles/demo.dir/tutorial.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/tutorial.cxx.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/share/code/cmake/Tutorial/demo2/tutorial.cxx -o CMakeFiles/demo.dir/tutorial.cxx.s

CMakeFiles/demo.dir/tutorial.cxx.o.requires:
.PHONY : CMakeFiles/demo.dir/tutorial.cxx.o.requires

CMakeFiles/demo.dir/tutorial.cxx.o.provides: CMakeFiles/demo.dir/tutorial.cxx.o.requires
	$(MAKE) -f CMakeFiles/demo.dir/build.make CMakeFiles/demo.dir/tutorial.cxx.o.provides.build
.PHONY : CMakeFiles/demo.dir/tutorial.cxx.o.provides

CMakeFiles/demo.dir/tutorial.cxx.o.provides.build: CMakeFiles/demo.dir/tutorial.cxx.o

# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/tutorial.cxx.o"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

demo: CMakeFiles/demo.dir/tutorial.cxx.o
demo: CMakeFiles/demo.dir/build.make
demo: CMakeFiles/demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo.dir/build: demo
.PHONY : CMakeFiles/demo.dir/build

CMakeFiles/demo.dir/requires: CMakeFiles/demo.dir/tutorial.cxx.o.requires
.PHONY : CMakeFiles/demo.dir/requires

CMakeFiles/demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo.dir/clean

CMakeFiles/demo.dir/depend:
	cd /home/ubuntu/share/code/cmake/Tutorial/demo2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/share/code/cmake/Tutorial/demo2 /home/ubuntu/share/code/cmake/Tutorial/demo2 /home/ubuntu/share/code/cmake/Tutorial/demo2/build /home/ubuntu/share/code/cmake/Tutorial/demo2/build /home/ubuntu/share/code/cmake/Tutorial/demo2/build/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo.dir/depend

