# 🚀 Kubernetes Demo - Node.js + Docker + Kubernetes

A complete beginner-friendly Kubernetes project demonstrating how to containerize a Node.js application using Docker, push it to Docker Hub, and deploy it to a Kubernetes cluster using Minikube.

---

# 📌 Project Overview

This project demonstrates:

- Node.js REST API using Express
- Dockerizing the application
- Publishing Docker images to Docker Hub
- Deploying the application to Kubernetes
- Creating Kubernetes Deployment and Service
- Health & Readiness Probes
- Environment Variables
- Pod Scaling
- Deployment Automation using PowerShell and Bash

---

# 🛠 Tech Stack

- Node.js
- Express.js
- Docker
- Docker Hub
- Kubernetes
- Minikube
- kubectl
- PowerShell
- Bash

---

# 📂 Project Structure

```
Kubernete-demo/
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── Dockerfile
├── docker-compose.yaml
├── deploy.ps1
├── deploy.sh
├── index.js
├── package.json
├── package-lock.json
├── .dockerignore
├── .gitignore
└── README.md
```

---

# ⚙️ Features

- REST API
- Docker Container
- Docker Hub Integration
- Kubernetes Deployment
- Kubernetes Service
- 2 Replica Pods
- Readiness Probe
- Liveness Probe
- Environment Variables
- Automated Deployment Script

---

# 📦 API Endpoints

## Home

```
GET /
```

Returns

```json
{
    "message": "hello world from k8s container",
    "service": "hello node",
    "pod": "pod-name",
    "time": "timestamp"
}
```

---

## Readiness Probe

```
GET /ready
```

Response

```
ready
```

---

## Liveness Probe

```
GET /healthy
```

Response

```
ok done
```

---

# 🐳 Docker

## Build Image

```
docker build -t prabhatsoni16/kubernete-demo-api:latest .
```

---

## Run Container

```
docker run -p 3000:3000 prabhatsoni16/kubernete-demo-api:latest
```

---

## Push Image

```
docker push prabhatsoni16/kubernete-demo-api:latest
```

---

# ☸ Kubernetes Deployment

Deployment includes:

- 2 Replicas
- CPU Requests
- Memory Requests
- CPU Limits
- Memory Limits
- Readiness Probe
- Liveness Probe
- Environment Variable (Pod Name)

---

# Kubernetes Service

Service Type

```
NodePort
```

Port Mapping

```
3000 -> NodePort
```

---

# 🚀 Deploy to Kubernetes

## Apply Deployment

```
kubectl apply -f k8s/deployment.yaml
```

---

## Apply Service

```
kubectl apply -f k8s/service.yaml
```

---

## Apply Entire Folder

```
kubectl apply -f k8s/
```

---

# Useful Kubernetes Commands

## Get Pods

```
kubectl get pods
```

---

## Watch Pods

```
kubectl get pods -w
```

---

## Get Deployments

```
kubectl get deployments
```

---

## Get Services

```
kubectl get services
```

---

## Describe Pod

```
kubectl describe pod <pod-name>
```

---

## View Logs

```
kubectl logs <pod-name>
```

---

## Restart Deployment

```
kubectl rollout restart deployment/kubernete-demo-api
```

---

## Rollout Status

```
kubectl rollout status deployment/kubernete-demo-api
```

---

## Delete Pods

```
kubectl delete pods --all
```

---

# 🌐 Access Service

```
minikube service kubernete-demo-api-service
```

or

```
minikube service kubernete-demo-api-service --url
```

---

# 🐳 Docker Compose

Build

```
docker compose build
```

Run

```
docker compose up
```

Rebuild

```
docker compose up --build
```

Stop

```
docker compose down
```

---

# 🚀 Deployment Automation

## Linux / macOS

```
npm run deploy
```

Runs

```
deploy.sh
```

---

## Windows

```
npm run deploy-win
```

Runs

```
deploy.ps1
```

The deployment script automatically:

- Builds Docker Image
- Pushes Docker Image
- Applies Kubernetes Deployment
- Applies Kubernetes Service
- Waits for Rollout
- Displays Pods
- Displays Deployments
- Displays Services

---

# 📦 Environment Variables

The application receives the Pod Name using Kubernetes Downward API.

```yaml
env:
- name: POD_NAME
  valueFrom:
    fieldRef:
      fieldPath: metadata.name
```

Inside Node.js

```javascript
process.env.POD_NAME
```

---

# Resource Limits

CPU Request

```
100m
```

CPU Limit

```
500m
```

Memory Request

```
128Mi
```

Memory Limit

```
512Mi
```

---

# Readiness Probe

```
/ready
```

Checks if the application is ready to receive traffic.

---

# Liveness Probe

```
/healthy
```

Checks if the application is healthy.

---

# Docker Image

```
prabhatsoni16/kubernete-demo-api:latest
```

---

# Deployment Flow

```
Node.js Application
        │
        ▼
Docker Image
        │
        ▼
Docker Hub
        │
        ▼
Kubernetes Deployment
        │
        ▼
Replica Pods
        │
        ▼
Kubernetes Service
        │
        ▼
Application Accessible
```

---

# Problems Faced During Development

✔ Dockerfile empty error

✔ Incorrect Docker port mapping

✔ Nginx serving instead of Vite

✔ Vite Hot Reload not working

✔ Missing node_modules due to volume mount

✔ Docker cache issues

✔ CommonJS vs ES Module conflict

✔ Incorrect Kubernetes Service name

✔ Deployment file typo

✔ Minikube API Server startup issues

✔ CrashLoopBackOff

✔ Docker image not updating

✔ Windows PowerShell script execution issues

✔ Bash (`sh`) not available on Windows

---

# Lessons Learned

- Docker image creation
- Docker Hub publishing
- Docker caching
- Docker volumes
- Docker Compose
- Kubernetes Deployment
- Kubernetes Service
- ReplicaSets
- Pods
- Health Checks
- Readiness Checks
- Resource Requests & Limits
- Environment Variables
- Minikube
- kubectl
- Deployment Automation
- Debugging Kubernetes Applications

---

# Future Improvements

- Use versioned Docker image tags (v1, v2, ...)
- Configure Ingress
- Add ConfigMaps
- Add Secrets
- Use Persistent Volumes
- CI/CD using GitHub Actions
- Helm Charts
- Horizontal Pod Autoscaler (HPA)
- Monitoring with Prometheus & Grafana

---

# Author

**Prabhat Soni**

GitHub:

https://github.com/Prabhatvrma1

---

# License

ISC License

---

⭐ If you found this project useful, consider giving it a star on GitHub!