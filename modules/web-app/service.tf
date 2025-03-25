resource "kubernetes_service" "web_app" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
    labels = merge(local.common_labels, {
      app = var.app_name
    })
  }

  spec {
    selector = {
      app = var.app_name
    }

    port {
      port        = 80
      target_port = 80
    }

    type = var.service_type
  }
}