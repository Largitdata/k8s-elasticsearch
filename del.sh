

docker ps -a|grep k8s-elasticsearch|awk '{print $1}'|xargs -n 1 docker stop
docker ps -a|grep k8s-elasticsearch|awk '{print $1}'|xargs -n 1 docker rm
docker images|grep k8s-elasticsearch|awk '{print $3}'|xargs -n 1 docker rmi
