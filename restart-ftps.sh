eval $(minikube docker-env)
# kubectl delete svc ftps-service 
kubectl delete deployment ftps 
docker build -t img-ftps srcs/FTPS
kubectl apply -f srcs/yaml-files/ftps.yaml