# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\JurijCerar\Projects\Hitrost_Branja

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Hitrost_Branja.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hitrost_Branja.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hitrost_Branja.dir/flags.make

CMakeFiles/Hitrost_Branja.dir/main.cpp.obj: CMakeFiles/Hitrost_Branja.dir/flags.make
CMakeFiles/Hitrost_Branja.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hitrost_Branja.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Hitrost_Branja.dir\main.cpp.obj -c C:\Users\JurijCerar\Projects\Hitrost_Branja\main.cpp

CMakeFiles/Hitrost_Branja.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hitrost_Branja.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\JurijCerar\Projects\Hitrost_Branja\main.cpp > CMakeFiles\Hitrost_Branja.dir\main.cpp.i

CMakeFiles/Hitrost_Branja.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hitrost_Branja.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\JurijCerar\Projects\Hitrost_Branja\main.cpp -o CMakeFiles\Hitrost_Branja.dir\main.cpp.s

# Object files for target Hitrost_Branja
Hitrost_Branja_OBJECTS = \
"CMakeFiles/Hitrost_Branja.dir/main.cpp.obj"

# External object files for target Hitrost_Branja
Hitrost_Branja_EXTERNAL_OBJECTS =

Hitrost_Branja.exe: CMakeFiles/Hitrost_Branja.dir/main.cpp.obj
Hitrost_Branja.exe: CMakeFiles/Hitrost_Branja.dir/build.make
Hitrost_Branja.exe: CMakeFiles/Hitrost_Branja.dir/linklibs.rsp
Hitrost_Branja.exe: CMakeFiles/Hitrost_Branja.dir/objects1.rsp
Hitrost_Branja.exe: CMakeFiles/Hitrost_Branja.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Hitrost_Branja.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Hitrost_Branja.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hitrost_Branja.dir/build: Hitrost_Branja.exe

.PHONY : CMakeFiles/Hitrost_Branja.dir/build

CMakeFiles/Hitrost_Branja.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Hitrost_Branja.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Hitrost_Branja.dir/clean

CMakeFiles/Hitrost_Branja.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\JurijCerar\Projects\Hitrost_Branja C:\Users\JurijCerar\Projects\Hitrost_Branja C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug C:\Users\JurijCerar\Projects\Hitrost_Branja\cmake-build-debug\CMakeFiles\Hitrost_Branja.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Hitrost_Branja.dir/depend

