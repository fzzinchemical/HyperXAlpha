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
CMAKE_SOURCE_DIR = /home/cory/Workspace/Hyperx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cory/Workspace/Hyperx/Debug

# Include any dependencies generated for this target.
include CMakeFiles/Hyperx.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Hyperx.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Hyperx.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hyperx.dir/flags.make

CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o: CMakeFiles/Hyperx.dir/flags.make
CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o: /home/cory/Workspace/Hyperx/src/hyperxApp.cpp
CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o: CMakeFiles/Hyperx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o -MF CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o.d -o CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o -c /home/cory/Workspace/Hyperx/src/hyperxApp.cpp

CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cory/Workspace/Hyperx/src/hyperxApp.cpp > CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.i

CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cory/Workspace/Hyperx/src/hyperxApp.cpp -o CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.s

CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o: CMakeFiles/Hyperx.dir/flags.make
CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o: /home/cory/Workspace/Hyperx/src/hyperxFrame.cpp
CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o: CMakeFiles/Hyperx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o -MF CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o.d -o CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o -c /home/cory/Workspace/Hyperx/src/hyperxFrame.cpp

CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cory/Workspace/Hyperx/src/hyperxFrame.cpp > CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.i

CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cory/Workspace/Hyperx/src/hyperxFrame.cpp -o CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.s

CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o: CMakeFiles/Hyperx.dir/flags.make
CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o: /home/cory/Workspace/Hyperx/src/SwitchCtrl.cpp
CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o: CMakeFiles/Hyperx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o -MF CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o.d -o CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o -c /home/cory/Workspace/Hyperx/src/SwitchCtrl.cpp

CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cory/Workspace/Hyperx/src/SwitchCtrl.cpp > CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.i

CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cory/Workspace/Hyperx/src/SwitchCtrl.cpp -o CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.s

CMakeFiles/Hyperx.dir/src/dialog.cpp.o: CMakeFiles/Hyperx.dir/flags.make
CMakeFiles/Hyperx.dir/src/dialog.cpp.o: /home/cory/Workspace/Hyperx/src/dialog.cpp
CMakeFiles/Hyperx.dir/src/dialog.cpp.o: CMakeFiles/Hyperx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Hyperx.dir/src/dialog.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hyperx.dir/src/dialog.cpp.o -MF CMakeFiles/Hyperx.dir/src/dialog.cpp.o.d -o CMakeFiles/Hyperx.dir/src/dialog.cpp.o -c /home/cory/Workspace/Hyperx/src/dialog.cpp

CMakeFiles/Hyperx.dir/src/dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hyperx.dir/src/dialog.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cory/Workspace/Hyperx/src/dialog.cpp > CMakeFiles/Hyperx.dir/src/dialog.cpp.i

CMakeFiles/Hyperx.dir/src/dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hyperx.dir/src/dialog.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cory/Workspace/Hyperx/src/dialog.cpp -o CMakeFiles/Hyperx.dir/src/dialog.cpp.s

CMakeFiles/Hyperx.dir/src/pulse.cpp.o: CMakeFiles/Hyperx.dir/flags.make
CMakeFiles/Hyperx.dir/src/pulse.cpp.o: /home/cory/Workspace/Hyperx/src/pulse.cpp
CMakeFiles/Hyperx.dir/src/pulse.cpp.o: CMakeFiles/Hyperx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Hyperx.dir/src/pulse.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hyperx.dir/src/pulse.cpp.o -MF CMakeFiles/Hyperx.dir/src/pulse.cpp.o.d -o CMakeFiles/Hyperx.dir/src/pulse.cpp.o -c /home/cory/Workspace/Hyperx/src/pulse.cpp

CMakeFiles/Hyperx.dir/src/pulse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hyperx.dir/src/pulse.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cory/Workspace/Hyperx/src/pulse.cpp > CMakeFiles/Hyperx.dir/src/pulse.cpp.i

CMakeFiles/Hyperx.dir/src/pulse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hyperx.dir/src/pulse.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cory/Workspace/Hyperx/src/pulse.cpp -o CMakeFiles/Hyperx.dir/src/pulse.cpp.s

# Object files for target Hyperx
Hyperx_OBJECTS = \
"CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o" \
"CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o" \
"CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o" \
"CMakeFiles/Hyperx.dir/src/dialog.cpp.o" \
"CMakeFiles/Hyperx.dir/src/pulse.cpp.o"

# External object files for target Hyperx
Hyperx_EXTERNAL_OBJECTS =

/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/src/hyperxApp.cpp.o
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/src/hyperxFrame.cpp.o
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/src/SwitchCtrl.cpp.o
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/src/dialog.cpp.o
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/src/pulse.cpp.o
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/build.make
/home/cory/Workspace/Hyperx/bin/Hyperx: /usr/lib/libhidapi-hidraw.so.0.14.0
/home/cory/Workspace/Hyperx/bin/Hyperx: CMakeFiles/Hyperx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cory/Workspace/Hyperx/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable /home/cory/Workspace/Hyperx/bin/Hyperx"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hyperx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hyperx.dir/build: /home/cory/Workspace/Hyperx/bin/Hyperx
.PHONY : CMakeFiles/Hyperx.dir/build

CMakeFiles/Hyperx.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hyperx.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hyperx.dir/clean

CMakeFiles/Hyperx.dir/depend:
	cd /home/cory/Workspace/Hyperx/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cory/Workspace/Hyperx /home/cory/Workspace/Hyperx /home/cory/Workspace/Hyperx/Debug /home/cory/Workspace/Hyperx/Debug /home/cory/Workspace/Hyperx/Debug/CMakeFiles/Hyperx.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Hyperx.dir/depend

