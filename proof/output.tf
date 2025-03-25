output "cluster_name" {
  description = "Name of the Kind cluster"
  value       = module.kind-cluster.cluster_name
}

output "web_apps_info" {
  description = "Information about the web applications"
  value = {
    for name, app in module.web-apps : name => {
      web_app_name     = app.web_app_name
      web_app_image    = app.image
      web_app_replicas = app.replicas
      web_app_url      = app.web_app_url
    }
  }
}
