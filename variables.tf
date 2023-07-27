variable "resource_group_name" {
  type        = string
  description = "Resource Group name to deploy to"
}

variable "location" {
  type        = string
  description = "Resource Group name to deploy to"
}

variable "dns_resolver_name" {
  type        = string
  description = "DNS resolver name"
}

variable "virtual_network_id" {
  type        = string
  description = "Virtual network resource id to deploy DNS resolver to"
}

variable "inbound_endpoints" {
  type = object(
    {
      name      = string
      subnet_id = string
    }
  )
  description = "Private DNS resolver inbound endpoints"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
}
