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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\Software\ClionProject\RmServo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\Software\ClionProject\RmServo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RmServo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RmServo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RmServo.dir/flags.make

CMakeFiles/RmServo.dir/main.cpp.obj: CMakeFiles/RmServo.dir/flags.make
CMakeFiles/RmServo.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RmServo.dir/main.cpp.obj"
	U:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\RmServo.dir\main.cpp.obj -c G:\Software\ClionProject\RmServo\main.cpp

CMakeFiles/RmServo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RmServo.dir/main.cpp.i"
	U:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\main.cpp > CMakeFiles\RmServo.dir\main.cpp.i

CMakeFiles/RmServo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RmServo.dir/main.cpp.s"
	U:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\main.cpp -o CMakeFiles\RmServo.dir\main.cpp.s

# Object files for target RmServo
RmServo_OBJECTS = \
"CMakeFiles/RmServo.dir/main.cpp.obj"

# External object files for target RmServo
RmServo_EXTERNAL_OBJECTS =

RmServo.exe: CMakeFiles/RmServo.dir/main.cpp.obj
RmServo.exe: CMakeFiles/RmServo.dir/build.make
RmServo.exe: CMakeFiles/RmServo.dir/linklibs.rsp
RmServo.exe: CMakeFiles/RmServo.dir/objects1.rsp
RmServo.exe: CMakeFiles/RmServo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RmServo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RmServo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RmServo.dir/build: RmServo.exe

.PHONY : CMakeFiles/RmServo.dir/build

CMakeFiles/RmServo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RmServo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RmServo.dir/clean

CMakeFiles/RmServo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\Software\ClionProject\RmServo G:\Software\ClionProject\RmServo G:\Software\ClionProject\RmServo\cmake-build-debug G:\Software\ClionProject\RmServo\cmake-build-debug G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles\RmServo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RmServo.dir/depend

