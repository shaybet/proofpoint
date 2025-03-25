<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.17.0 |
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | ~> 2.36.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kind-cluster"></a> [kind-cluster](#module\_kind-cluster) | ../modules/kind-cluster | n/a |
| <a name="module_nginx-ingress"></a> [nginx-ingress](#module\_nginx-ingress) | ../modules/nginx-ingress | n/a |
| <a name="module_web-apps"></a> [web-apps](#module\_web-apps) | ../modules/web-app | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.namespaces](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment to deploy the web applications | `string` | n/a | yes |
| <a name="input_web_apps"></a> [web\_apps](#input\_web\_apps) | A map of web applications to deploy | <pre>map(object({<br/>    app_name  = string<br/>    namespace = string<br/>    image     = string<br/>    replicas  = number<br/>    resource_limits = object({<br/>      cpu    = string<br/>      memory = string<br/>    })<br/>    resource_requests = object({<br/>      cpu    = string<br/>      memory = string<br/>    })<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Name of the Kind cluster |
| <a name="output_web_apps_info"></a> [web\_apps\_info](#output\_web\_apps\_info) | Information about the web applications |
<!-- END_TF_DOCS -->