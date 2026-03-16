# Kubernetes Basics Lab 🚀

![Microsoft](https://img.shields.io/badge/Microsoft-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

This repository is designed for practicing core Kubernetes concepts using a local cluster environment.

## Features
- **Automated Cluster Setup**: Uses `kind` (Kubernetes in Docker) for rapid environment provisioning.
- **Declarative Deployments**: Managing infrastructure using YAML manifests rather than imperative commands.
- **Service Configuration**: Implementing `NodePort` to expose applications to the local machine.
- **Scalability & Self-healing**: Configured with 3 Nginx replicas with resource requests and limits.

## Tech Stack
- **Docker Desktop**
- **kind**
- **kubectl**
- **PowerShell**

## Self-healing test

kubectl delete pod <pod-name>
kubectl get pods -l app=nginx -w

Deployment automatically recreates the deleted pod.

## Rolling update

kubectl set image deployment/nginx nginx=nginx:1.25
kubectl rollout status deployment/nginx

Kubernetes performs a zero-downtime rolling update by gradually replacing old pods with new ones.

## Getting Started
To spin up the entire environment (create the cluster and deploy the manifests), run the provided automation script from the project root:

Kubernetes Lab Preview
<img width="1920" height="961" alt="Slika1" src="https://github.com/user-attachments/assets/5b6e9691-6e58-4921-98d6-8d6f8a19d380" />


```powershell
.\scripts\run.ps1




