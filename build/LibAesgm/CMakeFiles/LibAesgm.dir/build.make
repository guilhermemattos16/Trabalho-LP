# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/guilherme/ufes/Trabalho-LP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guilherme/ufes/Trabalho-LP/build

# Include any dependencies generated for this target.
include LibAesgm/CMakeFiles/LibAesgm.dir/depend.make

# Include the progress variables for this target.
include LibAesgm/CMakeFiles/LibAesgm.dir/progress.make

# Include the compile flags for this target's objects.
include LibAesgm/CMakeFiles/LibAesgm.dir/flags.make

LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.o: LibAesgm/CMakeFiles/LibAesgm.dir/flags.make
LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.o: ../LibAesgm/aescrypt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.o"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibAesgm.dir/aescrypt.c.o   -c /home/guilherme/ufes/Trabalho-LP/LibAesgm/aescrypt.c

LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibAesgm.dir/aescrypt.c.i"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guilherme/ufes/Trabalho-LP/LibAesgm/aescrypt.c > CMakeFiles/LibAesgm.dir/aescrypt.c.i

LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibAesgm.dir/aescrypt.c.s"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guilherme/ufes/Trabalho-LP/LibAesgm/aescrypt.c -o CMakeFiles/LibAesgm.dir/aescrypt.c.s

LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.o: LibAesgm/CMakeFiles/LibAesgm.dir/flags.make
LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.o: ../LibAesgm/aeskey.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.o"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibAesgm.dir/aeskey.c.o   -c /home/guilherme/ufes/Trabalho-LP/LibAesgm/aeskey.c

LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibAesgm.dir/aeskey.c.i"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guilherme/ufes/Trabalho-LP/LibAesgm/aeskey.c > CMakeFiles/LibAesgm.dir/aeskey.c.i

LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibAesgm.dir/aeskey.c.s"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guilherme/ufes/Trabalho-LP/LibAesgm/aeskey.c -o CMakeFiles/LibAesgm.dir/aeskey.c.s

LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.o: LibAesgm/CMakeFiles/LibAesgm.dir/flags.make
LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.o: ../LibAesgm/aes_modes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.o"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibAesgm.dir/aes_modes.c.o   -c /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_modes.c

LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibAesgm.dir/aes_modes.c.i"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_modes.c > CMakeFiles/LibAesgm.dir/aes_modes.c.i

LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibAesgm.dir/aes_modes.c.s"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_modes.c -o CMakeFiles/LibAesgm.dir/aes_modes.c.s

LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.o: LibAesgm/CMakeFiles/LibAesgm.dir/flags.make
LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.o: ../LibAesgm/aes_ni.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.o"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibAesgm.dir/aes_ni.c.o   -c /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_ni.c

LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibAesgm.dir/aes_ni.c.i"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_ni.c > CMakeFiles/LibAesgm.dir/aes_ni.c.i

LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibAesgm.dir/aes_ni.c.s"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guilherme/ufes/Trabalho-LP/LibAesgm/aes_ni.c -o CMakeFiles/LibAesgm.dir/aes_ni.c.s

LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.o: LibAesgm/CMakeFiles/LibAesgm.dir/flags.make
LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.o: ../LibAesgm/aestab.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.o"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibAesgm.dir/aestab.c.o   -c /home/guilherme/ufes/Trabalho-LP/LibAesgm/aestab.c

LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibAesgm.dir/aestab.c.i"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guilherme/ufes/Trabalho-LP/LibAesgm/aestab.c > CMakeFiles/LibAesgm.dir/aestab.c.i

LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibAesgm.dir/aestab.c.s"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guilherme/ufes/Trabalho-LP/LibAesgm/aestab.c -o CMakeFiles/LibAesgm.dir/aestab.c.s

# Object files for target LibAesgm
LibAesgm_OBJECTS = \
"CMakeFiles/LibAesgm.dir/aescrypt.c.o" \
"CMakeFiles/LibAesgm.dir/aeskey.c.o" \
"CMakeFiles/LibAesgm.dir/aes_modes.c.o" \
"CMakeFiles/LibAesgm.dir/aes_ni.c.o" \
"CMakeFiles/LibAesgm.dir/aestab.c.o"

# External object files for target LibAesgm
LibAesgm_EXTERNAL_OBJECTS =

LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/aescrypt.c.o
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/aeskey.c.o
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/aes_modes.c.o
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/aes_ni.c.o
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/aestab.c.o
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/build.make
LibAesgm/libLibAesgm.a: LibAesgm/CMakeFiles/LibAesgm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guilherme/ufes/Trabalho-LP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libLibAesgm.a"
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && $(CMAKE_COMMAND) -P CMakeFiles/LibAesgm.dir/cmake_clean_target.cmake
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LibAesgm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LibAesgm/CMakeFiles/LibAesgm.dir/build: LibAesgm/libLibAesgm.a

.PHONY : LibAesgm/CMakeFiles/LibAesgm.dir/build

LibAesgm/CMakeFiles/LibAesgm.dir/clean:
	cd /home/guilherme/ufes/Trabalho-LP/build/LibAesgm && $(CMAKE_COMMAND) -P CMakeFiles/LibAesgm.dir/cmake_clean.cmake
.PHONY : LibAesgm/CMakeFiles/LibAesgm.dir/clean

LibAesgm/CMakeFiles/LibAesgm.dir/depend:
	cd /home/guilherme/ufes/Trabalho-LP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guilherme/ufes/Trabalho-LP /home/guilherme/ufes/Trabalho-LP/LibAesgm /home/guilherme/ufes/Trabalho-LP/build /home/guilherme/ufes/Trabalho-LP/build/LibAesgm /home/guilherme/ufes/Trabalho-LP/build/LibAesgm/CMakeFiles/LibAesgm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LibAesgm/CMakeFiles/LibAesgm.dir/depend
