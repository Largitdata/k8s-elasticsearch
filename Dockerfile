
## Original Dockerfile https://github.com/pires/docker-elasticsearch
FROM quay.io/pires/docker-elasticsearch-kubernetes:6.1.3

MAINTAINER Brian Luan <jznight@gmail.com>

COPY ./ik/ /elasticsearch/plugins/ik/
COPY ./jvm/java.policy /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
COPY ./dict/*.dict /elasticsearch/dict/
