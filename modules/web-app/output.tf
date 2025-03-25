output "web_app_url" {
  description = "URLs for the web applications"
  value       = "http://localhost/${kubernetes_deployment.web_app.metadata[0].name}"
}

output "replicas" {
  description = "Number of replicas for the web application"
  value       = kubernetes_deployment.web_app.spec[0].replicas
}

output "web_app_name" {
  description = "Name of the web application"
  value       = kubernetes_deployment.web_app.metadata[0].name
}

output "image" {
  description = "Image used for the web application"
  value       = kubernetes_deployment.web_app.spec[0].template[0].spec[0].container[0].image
}