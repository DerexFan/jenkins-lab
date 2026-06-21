terraform {

required_providers {
helm = {
source = "hashicorp/helm"
version = "~> 3.0"
}
}
}

provider "helm" {
kubernetes {
config_path = "~/.kube/config"
}
}

resource "helm_release" "jenkins" {

name       = "myjenkins"

repository = "https://charts.jenkins.io"

chart      = "jenkins"

values = [
file("${path.module}/../helm/values.yaml")
]
}

