resource "kind_cluster" "default" {
  name           = var.cluster_name
  node_image     = "kindest/node:${var.cluster_version}"
  wait_for_ready = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
      extra_port_mappings {
        container_port = 80
        host_port      = 80
      }
      extra_port_mappings {
        container_port = 443
        host_port      = 443
      }
    }

    # dynamic "node" {
    #   for_each = range(var.worker_count)
    #   content {
    #     role = "worker"
    #   }
    # }
  }
}