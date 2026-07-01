#!/bin/bash

set -e

NAME="kubernete-demo-api"
USERNAME="prabhatsoni16"
IMAGE="$USERNAME/$NAME:latest"

echo "Building Docker image..."
docker build -t $IMAGE .

echo "Pushing image to Docker Hub..."
docker push $IMAGE

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Getting Deployments..."
kubectl get deployments

echo "Getting Pods..."
kubectl get pods

echo "Getting Services..."
kubectl get services

echo "Fetching service details..."
kubectl get service ${NAME}-service

echo "Deployment completed successfully!"