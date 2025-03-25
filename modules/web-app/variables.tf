# Variables for the Kubernetes web application deployment

variable "app_name" {
  description = "Name of the web application"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace for web app"
  type        = string
  default     = "web-apps"
}

variable "image" {
  description = "Nginx image to use for the web applications"
  type        = string
  default     = "nginx"
}

variable "replicas" {
  description = "Number of replicas for each web application"
  type        = number
  default     = 1
}

variable "resource_limits" {
  description = "Resource limits for each container"
  type        = map(string)
  default = {
    cpu    = "0.5"
    memory = "512Mi"
  }
}

variable "resource_requests" {
  description = "Resource requests for each container"
  type        = map(string)
  default = {
    cpu    = "0.1"
    memory = "128Mi"
  }
}

variable "service_type" {
  description = "Kubernetes service type"
  type        = string
  default     = "ClusterIP"
}

variable "ingress_annotations" {
  description = "Annotations to add to the ingress resources"
  type        = map(string)
  default = {
    "nginx.ingress.kubernetes.io/rewrite-target" = "/"
  }
}

variable "tls_secret_name" {
  description = "Name of the TLS secret for ingress"
  type        = string
  default     = "apps-tls-secret"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}