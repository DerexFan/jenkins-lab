FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    curl \
    docker.io

RUN curl -LO \
https://dl.k8s.io/release/v1.33.0/bin/linux/amd64/kubectl

RUN install -m 0755 kubectl /usr/local/bin/kubectl
