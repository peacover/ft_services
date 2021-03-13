eval $(minikube docker-env)
kubectl delete svc grafana-service  
kubectl delete deployment grafana 
docker build -t img-grafana srcs/Grafana
kubectl apply -f grafana.yaml