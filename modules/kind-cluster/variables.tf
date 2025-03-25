variable "cluster_name" {
  description = "Name of the Kind cluster"
  type        = string
  default     = "kind-cluster"
}

variable "cluster_version" {
  description = "The kubernetes version to use in the KinD Cluster"
  type        = string
  default     = "v1.31.6"
}

variable "worker_count" {
  description = "The number of worker nodes to create in the KinD Cluster"
  type        = number
  default     = 1
}