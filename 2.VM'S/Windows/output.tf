output "vm_id" {
  value = azurerm_windows_virtual_machine.example.id
}

output "vm_ip" {
  value = azurerm_windows_virtual_machine.example.public_ip_address
}