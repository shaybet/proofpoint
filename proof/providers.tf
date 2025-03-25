terraform {
  required_version = ">= 1.9.0"
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.8.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.36.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.17.0"
    }
  }
}

provider "kubernetes" {
  host                   = module.kind-cluster.endpoint
  cluster_ca_certificate = module.kind-cluster.cluster_ca_certificate
  client_certificate     = module.kind-cluster.client_certificate
  client_key             = module.kind-cluster.client_key
}

provider "helm" {
  kubernetes {
    host                   = module.kind-cluster.endpoint
    cluster_ca_certificate = module.kind-cluster.cluster_ca_certificate
    client_certificate     = module.kind-cluster.client_certificate
    client_key             = module.kind-cluster.client_key
  }
}
