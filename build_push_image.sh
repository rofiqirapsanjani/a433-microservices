#!/bin/bash

# Build Docker image
docker build -t item-app:v1 .

# Display the list of local Docker images
docker images

# Tag the image according to Docker Hub format
docker tag item-app:v1 sanjanivicky/item-app:v1

# Push the image to Docker Hub
docker push sanjanivicky/item-app:v1