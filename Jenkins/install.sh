#!/bin/sh

# Step 1 - Update existing packages
sudo apt-get update
echo "Done Update Package"

# Step 2 - Install Java
sudo apt install -y default-jdk
echo "Done Install default-jdk"

# Step 3 - Download Jenkins package. 
# You can go to http://pkg.jenkins.io/debian/ to see the available commands
# First, add a key to your system
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# To Solve error on my machine
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 9B7D32F2D50582E6

# Step 4 - Add the following entry in your /etc/apt/sources.list:
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Step 5 -Update your local package index
sudo apt update
echo "Done Update Package"

# Step 6 - Install Jenkins
sudo apt-get install -y jenkins
echo "Done Install jenkins"

# Step 7 - Start the Jenkins server
sudo systemctl start jenkins

# Step 8 - Enable the service to load during boot
sudo systemctl enable jenkins
sudo systemctl status jenkins
