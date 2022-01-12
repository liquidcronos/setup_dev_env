#!/bin/bash

#install a solarized colorscheme:
sudo apt-get install dconf-cli

cd /tmp
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
