#!/bin/sh

# Stop the containter
docker stop todo-app

# Remove the image
docker rmi --force todo-app

# Remove all the unused Containers
docker system prune -a 
