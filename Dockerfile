## Base Image for NodeJS
FROM node:current-slim

## Used in CMD
ARG DNS_Name

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy Code to working directory
COPY /src /app/

## Step 3:
# Install needed packages  
RUN sudo apt-get update -y && npm install

## Step 4:
# Expose port 8080
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["yarn","serve","--host","$DNS_Name","--disable-host-check"]
