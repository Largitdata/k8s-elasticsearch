
## Original Dockerfile https://github.com/pires/docker-elasticsearch
FROM largitdata/docker-elasticsearch:6.1.3

MAINTAINER Brian Luan <jznight@gmail.com>

COPY ./ik/ /elasticsearch/plugins/ik/
COPY ./jvm/java.policy /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
COPY ./dict/ /elasticsearch/config/dict/
COPY ./probe.sh /
