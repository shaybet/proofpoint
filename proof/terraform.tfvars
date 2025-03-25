# This file contains the variables that are used in the terraform code
environment = "dev"

web_apps = {
  app1 = {
    app_name  = "webapp1"
    namespace = "default"
    image     = "nginx:1.23-alpine"
    replicas  = 2
    resource_limits = {
      cpu    = "1.0"
      memory = "1Gi"
    }
    resource_requests = {
      cpu    = "0.2"
      memory = "256Mi"
    }
  },
  app2 = {
    app_name  = "webapp2"
    namespace = "default"
    image     = "nginx:1.22-alpine"
    replicas  = 3
    resource_limits = {
      cpu    = "2.0"
      memory = "2Gi"
    }
    resource_requests = {
      cpu    = "0.5"
      memory = "512Mi"
    }
  },
  app3 = {
    app_name  = "webapp3"
    namespace = "test"
    image     = "nginx:1.21-alpine"
    replicas  = 1
    resource_limits = {
      cpu    = "0.5"
      memory = "512Mi"
    }
    resource_requests = {
      cpu    = "0.1"
      memory = "128Mi"
    }
  }
}
