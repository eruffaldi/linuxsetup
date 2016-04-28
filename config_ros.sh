#!/usr/bin/env bash
#
#UBUNTU NAMES
#precise 12.04
#xenial  14.04
#
#ROS NAMES
#hydro   
#indigo LTS
#jade
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $UBUNTUNAME main" > /etc/apt/sources.list.d/ros-latest.list'
apt-get update
apt-get -q -y --force-yes  install ros-$ROSNAME-desktop-full
apt-cache search ros-$ROSNAME
rosdep init
rosdep update
apt-get -q -y --force-yes install python-rosinstall

#User integration
echo "source /opt/ros/$ROSNAME/setup.bash" >> ~/.bashrc
source ~/.bashrc
