<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kind"></a> [kind](#provider\_kind) | 0.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kind_cluster.default](https://registry.terraform.io/providers/tehcyx/kind/0.8.0/docs/resources/cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the Kind cluster | `string` | `"kind-cluster"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The kubernetes version to use in the KinD Cluster | `string` | `"v1.31.6"` | no |
| <a name="input_worker_count"></a> [worker\_count](#input\_worker\_count) | The number of worker nodes to create in the KinD Cluster | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | n/a |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | n/a |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | n/a |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the Kind cluster |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
<!-- END_TF_DOCS -->