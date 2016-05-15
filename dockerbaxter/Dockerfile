FROM ubuntu:14.04

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
 sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
sudo apt-get install git-core python-argparse python-wstool python-vcstools python-rosdep ros-indigo-control-msgs ros-indigo-joystick-drivers
sudo apt-get install gazebo2 ros-indigo-qt-build ros-indigo-driver-common ros-indigo-gazebo-ros-control ros-indigo-gazebo-ros-pkgs ros-indigo-ros-control ros-indigo-control-toolbox ros-indigo-realtime-tools ros-indigo-ros-controllers ros-indigo-xacro python-wstool ros-indigo-tf-conversions ros-indigo-kdl-parser

sudo rosdep init
rosdep update
sudo apt-get install python-rosinstall
 mkdir -p ~/ros_ws/src
source /opt/ros/indigo/setup.bash
cd ~/ros_ws/src
wstool init .
wstool merge https://raw.githubusercontent.com/RethinkRobotics/baxter/master/baxter_sdk.rosinstall
wstool merge https://raw.githubusercontent.com/RethinkRobotics/baxter_simulator/master/baxter_simulator.rosinstall
wstool update
cd ~/ros_ws
catkin_make
catkin_make install
wget https://github.com/RethinkRobotics/baxter/raw/master/baxter.sh
chmod u+x baxter.sh


#MISSING DOWNLOAD of GAZEBO models inside: user/.gazebo/models
#https://bitbucket.org/osrf/gazebo_models/downloads

#TODO xfce for enabling full desktop: apt-get install xfce4
#TODO nvidia helpers: can be done at docker-run
#TODO automatically source source /opt/ros/indigo/setup.bash by adding it to the .bashrc

