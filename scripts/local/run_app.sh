#!/bin/sh

# Install packages
npm install

# Running unit tests
yarn test:unit

# Running e2e tests
yarn test:e2e --headless

# Start the app
yarn serve --host $1 --disable-host-check  
