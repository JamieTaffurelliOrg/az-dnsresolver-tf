# az-dnsresolver-tf
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.20 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_resolver.dns_resolver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver) | resource |
| [azurerm_private_dns_resolver_inbound_endpoint.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_inbound_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_resolver_name"></a> [dns\_resolver\_name](#input\_dns\_resolver\_name) | DNS resolver name | `string` | n/a | yes |
| <a name="input_inbound_endpoints"></a> [inbound\_endpoints](#input\_inbound\_endpoints) | Private DNS resolver inbound endpoints | <pre>list(object(<br>    {<br>      name      = string<br>      subnet_id = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Resource Group name to deploy to | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group name to deploy to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply | `map(string)` | n/a | yes |
| <a name="input_virtual_network_id"></a> [virtual\_network\_id](#input\_virtual\_network\_id) | Virtual network resource id to deploy DNS resolver to | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
