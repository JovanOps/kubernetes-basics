kind create cluster --name k8s-lab
kubectl apply -f manifests/nginx-deploy.yaml
kubectl apply -f manifests/nginx-svc.yaml
kubectl get pods
kubectl get svc