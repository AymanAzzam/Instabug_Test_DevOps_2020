#!/bin/sh

# Cloning the target repo for the app
git clone https://github.com/dobromir-hristov/todo-app.git

# Copy the Dockerfile to the app directory
cp Dockerfile scripts/docker/todo-app

# Copy the run_docker file to the app directory
cp scripts/docker/run_docker scripts/docker/todo-app