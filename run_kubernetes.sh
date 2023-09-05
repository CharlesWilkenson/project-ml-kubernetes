#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=wilkidocker2019/udapeopledevops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udapeopledevops \
    --image=$dockerpath \
    --image-pull-policy="Always" \
    --overrides='{"apiVersion": "v1", "spec":{"imagePullSecrets": [{"name": "regcred"}]}}'

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udapeopledevops 8000:80
