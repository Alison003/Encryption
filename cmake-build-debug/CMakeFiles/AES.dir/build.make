# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.21

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\development\Encryption

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\development\Encryption\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/AES.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AES.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AES.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AES.dir/flags.make

CMakeFiles/AES.dir/main.cpp.obj: CMakeFiles/AES.dir/flags.make
CMakeFiles/AES.dir/main.cpp.obj: ../main.cpp
CMakeFiles/AES.dir/main.cpp.obj: CMakeFiles/AES.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\development\Encryption\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AES.dir/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AES.dir/main.cpp.obj -MF CMakeFiles\AES.dir\main.cpp.obj.d -o CMakeFiles\AES.dir\main.cpp.obj -c C:\development\Encryption\main.cpp

CMakeFiles/AES.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AES.dir/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\development\Encryption\main.cpp > CMakeFiles\AES.dir\main.cpp.i

CMakeFiles/AES.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AES.dir/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\development\Encryption\main.cpp -o CMakeFiles\AES.dir\main.cpp.s

# Object files for target AES
AES_OBJECTS = \
"CMakeFiles/AES.dir/main.cpp.obj"

# External object files for target AES
AES_EXTERNAL_OBJECTS =

AES.exe: CMakeFiles/AES.dir/main.cpp.obj
AES.exe: CMakeFiles/AES.dir/build.make
AES.exe: CMakeFiles/AES.dir/linklibs.rsp
AES.exe: CMakeFiles/AES.dir/objects1.rsp
AES.exe: CMakeFiles/AES.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\development\Encryption\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AES.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\AES.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AES.dir/build: AES.exe
.PHONY : CMakeFiles/AES.dir/build

CMakeFiles/AES.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\AES.dir\cmake_clean.cmake
.PHONY : CMakeFiles/AES.dir/clean

CMakeFiles/AES.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\development\Encryption C:\development\Encryption C:\development\Encryption\cmake-build-debug C:\development\Encryption\cmake-build-debug C:\development\Encryption\cmake-build-debug\CMakeFiles\AES.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AES.dir/depend

