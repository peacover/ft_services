# brew install kubectl
# brew install minikube
# export MINIKUBE_HOME=/goinfre/$USER/
# rm -rf /Users/yer-raki/.minikube
# eval $(minikube docker-env)
minikube delete
# minikube -p minikube docker-env
minikube docker-env
minikube start --driver=virtualbox

eval $(minikube docker-env)

docker build -t img-nginx srcs/Nginx
docker build -t img-mysql srcs/MySQL
docker build -t img-phpmyadmin srcs/phpMyAdmin
docker build -t img-wordpress srcs/WordPress
docker build -t img-influxdb srcs/InfluxDB
docker build -t img-ftps srcs/FTPS
docker build -t img-grafana srcs/Grafana

kubectl delete svc --all
kubectl delete deployment --all

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

minikube dashboard &

kubectl apply -f srcs/yaml-files/metallb.yaml
kubectl apply -f srcs/yaml-files/nginx.yaml
kubectl apply -f srcs/yaml-files/mysql.yaml
kubectl apply -f srcs/yaml-files/phpmyadmin.yaml
kubectl apply -f srcs/yaml-files/wordpress.yaml
kubectl apply -f srcs/yaml-files/influxdb.yaml
kubectl apply -f srcs/yaml-files/ftps.yaml
kubectl apply -f srcs/yaml-files/grafana.yaml  