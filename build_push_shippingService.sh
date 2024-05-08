#!/bin/bash
  
# Build Docker image
docker build -t shipping-service:v1 .

# Display the list of local Docker images
docker images

# Tag the image according to Docker Hub format
docker tag order-service:v1 sanjanivicky/shipping-service:v1

echo $PASSWORD_DOCKER_HUB | docker login -u sanjanivicky --password-stdin

# Push the image to Docker Hub
docker push sanjanivicky/shipping-service:v1
