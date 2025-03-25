output "ingress_namespace" {
  description = "Kubernetes namespace for nginx ingress controller"
  value       = helm_release.nginx_ingress.namespace
}

output "ingress_name" {
  description = "Name of the nginx ingress controller"
  value       = helm_release.nginx_ingress.name
}