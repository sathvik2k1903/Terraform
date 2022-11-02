# We are giving the infrastructure as a code blocks in this main.tf file
# terraform backend configuration for terraform.tfstate file
terraform{
  backend "azurerm"{
      #storage_account_name = "tfstorage7447"
      #container_name       = "tfcontainer7447"
      #key                  = "terraform.tfstate"
      #use_azuread_auth     = "true"
      #subscription_id      = "dda14da7-c86b-457c-a8a9-fb29747c8663"
  }
}
# Total number of resources -3
# Resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
# App service plan
resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
# App service
resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
 
  app_settings = {
    "SOME_KEY" = "some-value"
  }
}