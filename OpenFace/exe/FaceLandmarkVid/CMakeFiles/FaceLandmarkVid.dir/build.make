# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michellemorales/GitHub/OpenMM/OpenFace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michellemorales/GitHub/OpenMM/OpenFace

# Include any dependencies generated for this target.
include exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/depend.make

# Include the progress variables for this target.
include exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/progress.make

# Include the compile flags for this target's objects.
include exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/flags.make

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/flags.make
exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o: exe/FaceLandmarkVid/FaceLandmarkVid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michellemorales/GitHub/OpenMM/OpenFace/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o"
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o -c /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid/FaceLandmarkVid.cpp

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.i"
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid/FaceLandmarkVid.cpp > CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.i

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.s"
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid/FaceLandmarkVid.cpp -o CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.s

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.requires:

.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.requires

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.provides: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.requires
	$(MAKE) -f exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/build.make exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.provides.build
.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.provides

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.provides.build: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o


# Object files for target FaceLandmarkVid
FaceLandmarkVid_OBJECTS = \
"CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o"

# External object files for target FaceLandmarkVid
FaceLandmarkVid_EXTERNAL_OBJECTS =

bin/FaceLandmarkVid: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o
bin/FaceLandmarkVid: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/build.make
bin/FaceLandmarkVid: lib/local/LandmarkDetector/libLandmarkDetector.a
bin/FaceLandmarkVid: lib/local/FaceAnalyser/libFaceAnalyser.a
bin/FaceLandmarkVid: lib/3rdParty/dlib/libdlib.a
bin/FaceLandmarkVid: /usr/local/lib/libopencv_stitching.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_superres.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_videostab.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_aruco.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_bgsegm.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_bioinspired.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_ccalib.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_dpm.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_face.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_fuzzy.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_img_hash.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_line_descriptor.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_optflow.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_reg.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_rgbd.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_saliency.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_stereo.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_structured_light.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_surface_matching.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_tracking.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_xfeatures2d.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_ximgproc.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_xobjdetect.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_xphoto.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libboost_filesystem-mt.dylib
bin/FaceLandmarkVid: /usr/local/lib/libboost_system-mt.dylib
bin/FaceLandmarkVid: /usr/local/lib/libtbb.dylib
bin/FaceLandmarkVid: /usr/lib/libpthread.dylib
bin/FaceLandmarkVid: /usr/X11R6/lib/libX11.dylib
bin/FaceLandmarkVid: /usr/local/lib/libpng.dylib
bin/FaceLandmarkVid: /usr/local/lib/libjpeg.dylib
bin/FaceLandmarkVid: /usr/lib/libcblas.dylib
bin/FaceLandmarkVid: /usr/lib/liblapack.dylib
bin/FaceLandmarkVid: /usr/lib/libsqlite3.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_shape.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_photo.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_calib3d.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_phase_unwrapping.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_dnn.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_video.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_datasets.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_plot.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_text.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_features2d.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_flann.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_highgui.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_ml.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_videoio.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_imgcodecs.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_objdetect.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_imgproc.3.3.0.dylib
bin/FaceLandmarkVid: /usr/local/lib/libopencv_core.3.3.0.dylib
bin/FaceLandmarkVid: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/michellemorales/GitHub/OpenMM/OpenFace/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/FaceLandmarkVid"
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceLandmarkVid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/build: bin/FaceLandmarkVid

.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/build

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/requires: exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/FaceLandmarkVid.cpp.o.requires

.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/requires

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/clean:
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid && $(CMAKE_COMMAND) -P CMakeFiles/FaceLandmarkVid.dir/cmake_clean.cmake
.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/clean

exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/depend:
	cd /Users/michellemorales/GitHub/OpenMM/OpenFace && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michellemorales/GitHub/OpenMM/OpenFace /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid /Users/michellemorales/GitHub/OpenMM/OpenFace /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid /Users/michellemorales/GitHub/OpenMM/OpenFace/exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : exe/FaceLandmarkVid/CMakeFiles/FaceLandmarkVid.dir/depend
