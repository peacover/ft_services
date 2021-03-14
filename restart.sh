eval $(minikube docker-env)
kubectl delete svc $1
kubectl delete deployment $1 
docker build -t img-$1 srcs/$1
kubectl apply -f srcs/yaml-files/$1.yaml