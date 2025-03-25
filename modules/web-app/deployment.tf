resource "kubernetes_deployment" "web_app" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
    labels = merge(local.common_labels, {
      app = var.app_name
    })
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = merge(local.common_labels, {
          app = var.app_name
        })
      }

      spec {
        container {
          image = var.image
          name  = "nginx"

          port {
            container_port = 80
          }

          env {
            name = "POD_IP"
            value_from {
              field_ref {
                field_path = "status.podIP"
              }
            }
          }

          env {
            name = "POD_NAME"
            value_from {
              field_ref {
                field_path = "metadata.name"
              }
            }
          }

          env {
            name = "APP_NAME"
            value_from {
              field_ref {
                field_path = "metadata.labels['app']"
              }
            }
          }

          volume_mount {
            name       = "html-content"
            mount_path = "/usr/share/nginx/html"
          }

          volume_mount {
            name       = "nginx-config-script"
            mount_path = "/etc/nginx/templates"
          }

          resources {
            limits   = var.resource_limits
            requests = var.resource_requests
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80
            }
            initial_delay_seconds = 10
            period_seconds        = 30
          }
        }

        volume {
          name = "html-content"
          config_map {
            name = kubernetes_config_map.app_content.metadata[0].name
          }
        }

        volume {
          name = "nginx-config-script"
          config_map {
            name = kubernetes_config_map.nginx_config.metadata[0].name
          }
        }
      }
    }
  }
}