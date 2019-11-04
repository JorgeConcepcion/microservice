#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=jorgeconcep/sklearnapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 sklearnapp --image=jorgeconcep/sklearnapp:latest --port=5000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward sklearnapp 5000:5000