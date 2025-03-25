resource "kubernetes_ingress_v1" "web_apps_path" {
  metadata {
    name        = "${var.app_name}-ingress"
    namespace   = var.namespace
    labels      = local.common_labels
    annotations = var.ingress_annotations
  }

  spec {
    rule {
      http {
        path {
          path      = "/${var.app_name}"
          path_type = "Prefix"
          backend {
            service {
              name = var.app_name
              port {
                number = 80
              }
            }
          }
        }
      }
    }

    tls {
      secret_name = var.tls_secret_name
    }
  }
}