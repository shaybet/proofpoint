resource "helm_release" "nginx_ingress" {
  name             = var.ingress_name
  repository       = var.repository
  chart            = var.chart
  version          = var.ingress_version
  namespace        = var.ingress_namespace
  create_namespace = true
  timeout          = 600

  set {
    name  = "controller.service.type"
    value = "NodePort"
  }

  set {
    name  = "controller.ingressClassResource.default"
    value = "true"
  }

  set {
    name  = "controller.hostPort.enabled"
    value = "true"
  }

  set {
    name  = "controller.publishService.enabled"
    value = "false"
  }

  set {
    name  = "controller.extraArgs.publish-status-address"
    value = "localhost"
  }
}