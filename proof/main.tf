module "kind-cluster" {
  source       = "../modules/kind-cluster"
  cluster_name = "kind-cluster"
}

module "nginx-ingress" {
  source            = "../modules/nginx-ingress"
  ingress_name      = "nginx"
  ingress_namespace = "ingress-nginx"
}

resource "kubernetes_namespace" "namespaces" {
  for_each = tomap({ for namespace in toset([for app in var.web_apps : app.namespace if app.namespace != "default"]) : namespace => { namespace = namespace } })
  metadata {
    name = each.value.namespace
  }
}

module "web-apps" {
  source = "../modules/web-app"

  # iterate over the web_apps list
  for_each = var.web_apps

  namespace         = each.value.namespace
  environment       = var.environment
  app_name          = each.value.app_name
  image             = each.value.image
  replicas          = each.value.replicas
  resource_limits   = each.value.resource_limits
  resource_requests = each.value.resource_requests

  depends_on = [module.kind-cluster, module.nginx-ingress, kubernetes_namespace.namespaces]
}
