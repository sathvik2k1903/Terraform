variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"
}

variable "virtual_network_name" {
  type        = string
  description = "VNET name in Azure"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name in Azure"
}

variable "private_ip_address_allocation"{
  type         = string
  description  = "private ip address allocation in azure"
}

variable "network_interface_name" {
  type        = string
  description = "NIC name in Azure"
}

variable "public_ip_name" {
  type        = string
  description = "Public IP name in Azure"
}

variable "azurerm_windows_virtual_machine" {
  type        = string
  description = "windows VM name in Azure"
}