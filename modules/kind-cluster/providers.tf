terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.8.0"
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