#!/bin/bash
sudo apt update 

# Install Java 
sudo apt install openjdk-11-jdk -y

#Add the repository key to the system
sudo apt wget -q -O - https://pkg.jenkins.io/debianstable/jenkins.io.key | sudo apt-key add -


sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl status jenkins