resource "azurerm_private_dns_resolver" "dns_resolver" {
  name                = var.dns_resolver_name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_network_id  = var.virtual_network_id

  tags = var.tags
}

resource "azurerm_private_dns_resolver_inbound_endpoint" "example" {
  for_each                = { for k in var.inbound_endpoints : k.name => k if k != null }
  name                    = each.key
  private_dns_resolver_id = azurerm_private_dns_resolver.dns_resolver.id
  location                = var.location

  ip_configurations {
    private_ip_allocation_method = "Dynamic"
    subnet_id                    = each.value["subnet_id"]
  }

  tags = var.tags
}
