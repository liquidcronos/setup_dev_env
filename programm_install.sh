#!/bin/bash

sudo snap install spotify

yes | sudo apt-get install thunderbird

yes | sudo apt-get install htop

yes | sudo apt install texmaker

cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
yes | sudo apt install ./google-chrome-stable_current_amd64.deb

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
