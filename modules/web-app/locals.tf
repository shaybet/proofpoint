# Local values used across the module

locals {
  common_labels = {
    app         = var.app_name
    environment = var.environment
    managed-by  = "terraform"
  }
}