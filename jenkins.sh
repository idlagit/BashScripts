#!/bin/bash
# This script will install jenkins on Ubuntu Server.

echo "________________########  UPDATE  #########__________________"
sudo apt-get update

# This section will install Java
echo "________________########  JAVA  ###########__________________"
sudo apt-get install openjdk-8-jdk -y
java -version

# This section will install Jenkins
echo "________________#########  JENKINS  #########__________________"
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
echo "Jenkins is sucessfully installed"
echo " Your Password is $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)"

# This section will installs Git"
echo "________________#########  GIT  ###########__________________"
sudo apt-get install git -y
sudo git --version
echo "Git is successfully installed"