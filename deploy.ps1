$ErrorActionPreference = "Stop"

$NAME = "kubernete-demo-api"
$USERNAME = "prabhatsoni16"
$IMAGE = "${USERNAME}/${NAME}:latest"

Write-Host "====================================="
Write-Host "Building Docker image..."
Write-Host "====================================="
docker build -t $IMAGE .

Write-Host ""
Write-Host "====================================="
Write-Host "Pushing image to Docker Hub..."
Write-Host "====================================="
docker push $IMAGE

Write-Host ""
Write-Host "====================================="
Write-Host "Applying Kubernetes manifests..."
Write-Host "====================================="
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

Write-Host ""
Write-Host "====================================="
Write-Host "Waiting for deployment rollout..."
Write-Host "====================================="
kubectl rollout status deployment/$NAME

Write-Host ""
Write-Host "====================================="
Write-Host "Deployments"
Write-Host "====================================="
kubectl get deployments

Write-Host ""
Write-Host "====================================="
Write-Host "Pods"
Write-Host "====================================="
kubectl get pods

Write-Host ""
Write-Host "====================================="
Write-Host "Services"
Write-Host "====================================="
kubectl get svc

Write-Host ""
Write-Host "====================================="
Write-Host "Service Details"
Write-Host "====================================="
kubectl get svc "${NAME}-service"

Write-Host ""
Write-Host "====================================="
Write-Host "Deployment completed successfully!"
Write-Host "====================================="