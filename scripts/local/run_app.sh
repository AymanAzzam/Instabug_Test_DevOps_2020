#!/bin/sh

# Cloning the target repo for the app
git clone https://github.com/dobromir-hristov/todo-app.git
cp Dockerfile scripts/local/todo-app
cd scripts/local/todo-app

# Install packages
npm install

# Running unit tests
yarn test:unit

# Running e2e tests
yarn test:e2e --headless

# Start the app
yarn serve --host $1 --disable-host-check  
