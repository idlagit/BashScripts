#!/bin/bash

# This script will install docker on Ubuntu Server
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt-get -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version
echo "Docker is now installed"