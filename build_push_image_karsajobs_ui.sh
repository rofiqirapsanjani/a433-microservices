#!/bin/bash
 
# Build Docker image
docker build -t karsajobs-ui:lattest .
 
# Display the list of local Docker images
docker images
 
# Tag the image according to Docker Hub format
docker tag item-app:v1 sanjanivicky/karsajobs-ui:lattest

docker login
 
# Push the image to Docker Hub
docker push sanjanivicky/karsajobs-ui:lattest
