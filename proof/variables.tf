
variable "environment" {
  description = "Environment to deploy the web applications"
  type        = string
}

variable "web_apps" {
  description = "A map of web applications to deploy"
  type = map(object({
    app_name  = string
    namespace = string
    image     = string
    replicas  = number
    resource_limits = object({
      cpu    = string
      memory = string
    })
    resource_requests = object({
      cpu    = string
      memory = string
    })
  }))

  default = {}
}
