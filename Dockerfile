## Base Image for NodeJS
FROM node:current-slim

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy Code to working directory
COPY . /app/

## Step 3:
# Install needed packages  
RUN apt-get update -y && npm install

## Step 4:
# Expose port 1024
EXPOSE 1024

## Step 5:
# Run app at container launch
CMD yarn serve --host  ec2-3-226-249-235.compute-1.amazonaws.com --disable-host-check --port 1024
