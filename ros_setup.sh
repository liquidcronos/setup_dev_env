#!/bin/bash

# setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#setup keys
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#instal ros
sudo apt update
yes | sudo apt install ros-noetic-desktop-full
yes | sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

#setup catkin_ws
source /opt/ros/noetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
source devel/setup.bash




