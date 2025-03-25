<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_config_map.app_content](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_config_map.nginx_config](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_deployment.web_app](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_ingress_v1.web_apps_path](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/ingress_v1) | resource |
| [kubernetes_service.web_app](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of the web application | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | Nginx image to use for the web applications | `string` | `"nginx"` | no |
| <a name="input_ingress_annotations"></a> [ingress\_annotations](#input\_ingress\_annotations) | Annotations to add to the ingress resources | `map(string)` | <pre>{<br/>  "nginx.ingress.kubernetes.io/rewrite-target": "/"<br/>}</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Kubernetes namespace for web app | `string` | `"web-apps"` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Number of replicas for each web application | `number` | `1` | no |
| <a name="input_resource_limits"></a> [resource\_limits](#input\_resource\_limits) | Resource limits for each container | `map(string)` | <pre>{<br/>  "cpu": "0.5",<br/>  "memory": "512Mi"<br/>}</pre> | no |
| <a name="input_resource_requests"></a> [resource\_requests](#input\_resource\_requests) | Resource requests for each container | `map(string)` | <pre>{<br/>  "cpu": "0.1",<br/>  "memory": "128Mi"<br/>}</pre> | no |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | Kubernetes service type | `string` | `"ClusterIP"` | no |
| <a name="input_tls_secret_name"></a> [tls\_secret\_name](#input\_tls\_secret\_name) | Name of the TLS secret for ingress | `string` | `"apps-tls-secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image"></a> [image](#output\_image) | Image used for the web application |
| <a name="output_replicas"></a> [replicas](#output\_replicas) | Number of replicas for the web application |
| <a name="output_web_app_name"></a> [web\_app\_name](#output\_web\_app\_name) | Name of the web application |
| <a name="output_web_app_url"></a> [web\_app\_url](#output\_web\_app\_url) | URLs for the web applications |
<!-- END_TF_DOCS -->