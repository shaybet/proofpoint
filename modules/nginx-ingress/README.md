<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.nginx_ingress](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | Chart for the nginx ingress controller | `string` | `"ingress-nginx"` | no |
| <a name="input_ingress_name"></a> [ingress\_name](#input\_ingress\_name) | Name of the nginx ingress controller | `string` | `"nginx"` | no |
| <a name="input_ingress_namespace"></a> [ingress\_namespace](#input\_ingress\_namespace) | Kubernetes namespace for nginx ingress controller | `string` | `"ingress-nginx"` | no |
| <a name="input_ingress_version"></a> [ingress\_version](#input\_ingress\_version) | The ingress chart version | `string` | `"4.12.0"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository for the nginx ingress controller | `string` | `"https://kubernetes.github.io/ingress-nginx"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ingress_name"></a> [ingress\_name](#output\_ingress\_name) | Name of the nginx ingress controller |
| <a name="output_ingress_namespace"></a> [ingress\_namespace](#output\_ingress\_namespace) | Kubernetes namespace for nginx ingress controller |
<!-- END_TF_DOCS -->