ver="6.1.3_20191017"

docker build -f Dockerfile ./ -t infominer.azurecr.io/k8s-elasticsearch:${ver}
docker push infominer.azurecr.io/k8s-elasticsearch:${ver}
