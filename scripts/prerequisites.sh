#!/bin/sh

# This Script for Ubuntu 18.04 LTS on AWS using Cloud9. 
# If you are using diiferent machine you need to install Programs on PreRequisites Steps for your machine.

# Install yarn
npm install -g yarn

# Install Cypress dependencies
sudo apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
