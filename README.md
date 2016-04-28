# linuxsetup

For Ubuntu<16.40 use config_gccupdate.sh for getting a recent compiler
	
	config_gccupdate.sh

For ROS specify both the platform and the ros version

	UBUNTUNAME=xenial ROSNAME=indigo config_ros.sh

For other 3D related packages (little3d and CoCo)

	config_3d.sh	

#NVidia and CUDA
For NVidia use the tools provided by Ubuntu to install the driver

For Nvidia CUDA 7.5 then install from website (SIGH)
TODO PATCHES needed for 16.04 GCC 5.3

#OpenCV 
Ubuntu 16.04 comes with 2.4.9, 14.04 with 2.3.

Prerequisites of OpenCV 3.1

	sudo apt-get install --assume-yes libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip

Then see instructions at: https://github.com/BVLC/caffe/wiki/Ubuntu-15.10-OpenCV-3.1-Installation-Guide

#PCL
Use the ppa as in the following file

	config_pcl.sh

#TODO
Instructions for PCL and OpenCV with GPU