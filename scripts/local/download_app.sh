#!/bin/sh

# Cloning the target repo for the app
git clone https://github.com/dobromir-hristov/todo-app.git

# Copy the run_app file to the app directory
cp scripts/local/run_app.sh todo-app/