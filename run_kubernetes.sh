#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="cdend-uda-avish-proj5"


# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run $dockerpath --image=avishkarn/cdend-uda-avish-proj5:latest --port=80

# Step 3:
# List kubernetes pods
sudo kubectl get pod

# Step 4:
# Forward the container port to a host
sudo kubectl expose deployment cdend-uda-avish-proj5 --type=LoadBalancer --port 80
minikube service cdend-uda-avish-proj5

