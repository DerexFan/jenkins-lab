FROM jenkins/inbound-agent:latest-jdk21

USER root

RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    unzip \
    wget

# kubectl
RUN curl -LO https://dl.k8s.io/release/v1.33.0/bin/linux/amd64/kubectl && \
    install -m 0755 kubectl /usr/local/bin/kubectl

# helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip && \
    unzip awscliv2.zip && \
    ./aws/install

USER jenkins
