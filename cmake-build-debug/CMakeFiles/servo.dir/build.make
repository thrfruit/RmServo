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
include CMakeFiles/servo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/servo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/servo.dir/flags.make

CMakeFiles/servo.dir/Source/dataExchange.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/dataExchange.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/dataExchange.cpp.obj: ../Source/dataExchange.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/servo.dir/Source/dataExchange.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\dataExchange.cpp.obj -c G:\Software\ClionProject\RmServo\Source\dataExchange.cpp

CMakeFiles/servo.dir/Source/dataExchange.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/dataExchange.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\dataExchange.cpp > CMakeFiles\servo.dir\Source\dataExchange.cpp.i

CMakeFiles/servo.dir/Source/dataExchange.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/dataExchange.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\dataExchange.cpp -o CMakeFiles\servo.dir\Source\dataExchange.cpp.s

CMakeFiles/servo.dir/Source/main.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/main.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/main.cpp.obj: ../Source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/servo.dir/Source/main.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\main.cpp.obj -c G:\Software\ClionProject\RmServo\Source\main.cpp

CMakeFiles/servo.dir/Source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/main.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\main.cpp > CMakeFiles\servo.dir\Source\main.cpp.i

CMakeFiles/servo.dir/Source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/main.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\main.cpp -o CMakeFiles\servo.dir\Source\main.cpp.s

CMakeFiles/servo.dir/Source/pidctrl.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/pidctrl.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/pidctrl.cpp.obj: ../Source/pidctrl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/servo.dir/Source/pidctrl.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\pidctrl.cpp.obj -c G:\Software\ClionProject\RmServo\Source\pidctrl.cpp

CMakeFiles/servo.dir/Source/pidctrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/pidctrl.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\pidctrl.cpp > CMakeFiles\servo.dir\Source\pidctrl.cpp.i

CMakeFiles/servo.dir/Source/pidctrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/pidctrl.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\pidctrl.cpp -o CMakeFiles\servo.dir\Source\pidctrl.cpp.s

CMakeFiles/servo.dir/Source/rmctrl.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/rmctrl.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/rmctrl.cpp.obj: ../Source/rmctrl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/servo.dir/Source/rmctrl.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\rmctrl.cpp.obj -c G:\Software\ClionProject\RmServo\Source\rmctrl.cpp

CMakeFiles/servo.dir/Source/rmctrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/rmctrl.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\rmctrl.cpp > CMakeFiles\servo.dir\Source\rmctrl.cpp.i

CMakeFiles/servo.dir/Source/rmctrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/rmctrl.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\rmctrl.cpp -o CMakeFiles\servo.dir\Source\rmctrl.cpp.s

CMakeFiles/servo.dir/Source/rscv.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/rscv.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/rscv.cpp.obj: ../Source/rscv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/servo.dir/Source/rscv.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\rscv.cpp.obj -c G:\Software\ClionProject\RmServo\Source\rscv.cpp

CMakeFiles/servo.dir/Source/rscv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/rscv.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\rscv.cpp > CMakeFiles\servo.dir\Source\rscv.cpp.i

CMakeFiles/servo.dir/Source/rscv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/rscv.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\rscv.cpp -o CMakeFiles\servo.dir\Source\rscv.cpp.s

CMakeFiles/servo.dir/Source/servo.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/servo.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/servo.cpp.obj: ../Source/servo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/servo.dir/Source/servo.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\servo.cpp.obj -c G:\Software\ClionProject\RmServo\Source\servo.cpp

CMakeFiles/servo.dir/Source/servo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/servo.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\servo.cpp > CMakeFiles\servo.dir\Source\servo.cpp.i

CMakeFiles/servo.dir/Source/servo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/servo.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\servo.cpp -o CMakeFiles\servo.dir\Source\servo.cpp.s

CMakeFiles/servo.dir/Source/time.cpp.obj: CMakeFiles/servo.dir/flags.make
CMakeFiles/servo.dir/Source/time.cpp.obj: CMakeFiles/servo.dir/includes_CXX.rsp
CMakeFiles/servo.dir/Source/time.cpp.obj: ../Source/time.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/servo.dir/Source/time.cpp.obj"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\servo.dir\Source\time.cpp.obj -c G:\Software\ClionProject\RmServo\Source\time.cpp

CMakeFiles/servo.dir/Source/time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo.dir/Source/time.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\Software\ClionProject\RmServo\Source\time.cpp > CMakeFiles\servo.dir\Source\time.cpp.i

CMakeFiles/servo.dir/Source/time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo.dir/Source/time.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\Software\ClionProject\RmServo\Source\time.cpp -o CMakeFiles\servo.dir\Source\time.cpp.s

# Object files for target servo
servo_OBJECTS = \
"CMakeFiles/servo.dir/Source/dataExchange.cpp.obj" \
"CMakeFiles/servo.dir/Source/main.cpp.obj" \
"CMakeFiles/servo.dir/Source/pidctrl.cpp.obj" \
"CMakeFiles/servo.dir/Source/rmctrl.cpp.obj" \
"CMakeFiles/servo.dir/Source/rscv.cpp.obj" \
"CMakeFiles/servo.dir/Source/servo.cpp.obj" \
"CMakeFiles/servo.dir/Source/time.cpp.obj"

# External object files for target servo
servo_EXTERNAL_OBJECTS =

servo.exe: CMakeFiles/servo.dir/Source/dataExchange.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/main.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/pidctrl.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/rmctrl.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/rscv.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/servo.cpp.obj
servo.exe: CMakeFiles/servo.dir/Source/time.cpp.obj
servo.exe: CMakeFiles/servo.dir/build.make
servo.exe: CMakeFiles/servo.dir/linklibs.rsp
servo.exe: CMakeFiles/servo.dir/objects1.rsp
servo.exe: CMakeFiles/servo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable servo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\servo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/servo.dir/build: servo.exe

.PHONY : CMakeFiles/servo.dir/build

CMakeFiles/servo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\servo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/servo.dir/clean

CMakeFiles/servo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\Software\ClionProject\RmServo G:\Software\ClionProject\RmServo G:\Software\ClionProject\RmServo\cmake-build-debug G:\Software\ClionProject\RmServo\cmake-build-debug G:\Software\ClionProject\RmServo\cmake-build-debug\CMakeFiles\servo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/servo.dir/depend

