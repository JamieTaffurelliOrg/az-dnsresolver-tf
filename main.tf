resource "azurerm_private_dns_resolver" "dns_resolver" {
  for_each            = var.dns_resolver == null ? [] : [var.dns_resolver]
  name                = var.dns_resolver.name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_virtual_network.virtual_network[0].location
  virtual_network_id  = data.azurerm_virtual_network.virtual_network[0].id

  tags = var.tags
}

resource "azurerm_private_dns_resolver_inbound_endpoint" "example" {
  for_each                = var.dns_resolver == null ? [] : [var.dns_resolver]
  name                    = var.dns_resolver.inbound_endpoint_name
  private_dns_resolver_id = azurerm_private_dns_resolver.dns_resolver[0].id
  location                = data.azurerm_virtual_network.virtual_network[0].location

  ip_configurations {
    private_ip_allocation_method = "Dynamic"
    subnet_id                    = data.azurerm_subnet.subnet[0].id
  }

  tags = var.tags
}
