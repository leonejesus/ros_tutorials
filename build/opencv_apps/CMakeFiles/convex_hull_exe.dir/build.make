# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/leone/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leone/catkin_ws/build

# Include any dependencies generated for this target.
include opencv_apps/CMakeFiles/convex_hull_exe.dir/depend.make

# Include the progress variables for this target.
include opencv_apps/CMakeFiles/convex_hull_exe.dir/progress.make

# Include the compile flags for this target's objects.
include opencv_apps/CMakeFiles/convex_hull_exe.dir/flags.make

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o: opencv_apps/CMakeFiles/convex_hull_exe.dir/flags.make
opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o: opencv_apps/convex_hull.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leone/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o"
	cd /home/leone/catkin_ws/build/opencv_apps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o -c /home/leone/catkin_ws/build/opencv_apps/convex_hull.cpp

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i"
	cd /home/leone/catkin_ws/build/opencv_apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leone/catkin_ws/build/opencv_apps/convex_hull.cpp > CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s"
	cd /home/leone/catkin_ws/build/opencv_apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leone/catkin_ws/build/opencv_apps/convex_hull.cpp -o CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires:

.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires
	$(MAKE) -f opencv_apps/CMakeFiles/convex_hull_exe.dir/build.make opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides.build
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides.build: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o


# Object files for target convex_hull_exe
convex_hull_exe_OBJECTS = \
"CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o"

# External object files for target convex_hull_exe
convex_hull_exe_EXTERNAL_OBJECTS =

/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/build.make
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libcv_bridge.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_core3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libimage_transport.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libmessage_filters.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libnodeletlib.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libbondcpp.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libclass_loader.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/libPocoFoundation.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libdl.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libroslib.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/librospack.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libroscpp.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/librosconsole.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/librostime.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libcpp_common.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_superres3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_face3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_img_hash3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_reg3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_tracking3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_shape3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_photo3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_viz3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_video3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_plot3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_text3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_dnn3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_flann3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_ml3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: /opt/ros/kinetic/lib/libopencv_core3.so.3.3.1
/home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leone/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull"
	cd /home/leone/catkin_ws/build/opencv_apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convex_hull_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv_apps/CMakeFiles/convex_hull_exe.dir/build: /home/leone/catkin_ws/devel/lib/opencv_apps/convex_hull

.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/build

opencv_apps/CMakeFiles/convex_hull_exe.dir/requires: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires

.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/requires

opencv_apps/CMakeFiles/convex_hull_exe.dir/clean:
	cd /home/leone/catkin_ws/build/opencv_apps && $(CMAKE_COMMAND) -P CMakeFiles/convex_hull_exe.dir/cmake_clean.cmake
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/clean

opencv_apps/CMakeFiles/convex_hull_exe.dir/depend:
	cd /home/leone/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leone/catkin_ws/src /home/leone/catkin_ws/src/opencv_apps /home/leone/catkin_ws/build /home/leone/catkin_ws/build/opencv_apps /home/leone/catkin_ws/build/opencv_apps/CMakeFiles/convex_hull_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/depend

