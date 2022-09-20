# Terraform output variable details will be given in this output.tf file
# output 1
output "webapp_url1" {
    value = azurerm_app_service.example1.default_site_hostname
}
output "webapp_ips1" {
    value = azurerm_app_service.example1.outbound_ip_addresses
}
# output 2
output "webapp_ips1" {
    value = azurerm_app_service.example1.outbound_ip_addresses
}

output "webapp_ips2" {
    value = azurerm_app_service.example2.outbound_ip_addresses
}