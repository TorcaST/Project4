#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tonisi4568489/testmyapp:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myappdemo --image="tonisi4568489/testmyapp:latest" --port=80 --labels app=myappdemo

# Step 3:
# List kubernetes pods
kubectl get pods
sleep 30s

# Step 4:
# Forward the container port to a host
kubectl port-forward myappdemo 80:80
