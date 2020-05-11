#!/bin/sh

# Cloning the target repo for the app
git clone https://github.com/dobromir-hristov/todo-app.git

# Copy the Dockerfile to the app directory
cp Dockerfile todo-app/

# Copy the run_docker file to the app directory
cp scripts/docker/run_docker.sh todo-app/