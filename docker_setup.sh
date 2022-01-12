#!/bin/bash

yes |  sudo apt-get remove docker docker-engine docker.io containerd runc

sudo curl -sSL https://get.docker.com/ | sh

sudo chmod 666 /var/run/docker.sock