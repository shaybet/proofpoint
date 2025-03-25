variable "ingress_name" {
  description = "Name of the nginx ingress controller"
  type        = string
  default     = "nginx"
}

variable "ingress_namespace" {
  description = "Kubernetes namespace for nginx ingress controller"
  type        = string
  default     = "ingress-nginx"
}

variable "repository" {
  description = "Repository for the nginx ingress controller"
  type        = string
  default     = "https://kubernetes.github.io/ingress-nginx"
}

variable "chart" {
  description = "Chart for the nginx ingress controller"
  type        = string
  default     = "ingress-nginx"
}

variable "ingress_version" {
  description = "The ingress chart version"
  type        = string
  default     = "4.12.0"
}