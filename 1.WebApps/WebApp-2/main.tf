# We are giving the infrastructure as a code blocks in this main.tf file
# terraform backend configuration for terraform.tfstate file
terraform{
  backend "azurerm"{
     # storage_account_name = "terraform2112"
     # container_name       = "terraform5212"
     # key                  = "terraform.tfstate"
     # use_azuread_auth     = "true"
     # subscription_id      = "78c4aad5-9675-4f40-b221-ca21bb1b1cea"
  }
}
# Total number of resources -6
# Resource group-1
resource "azurerm_resource_group" "example1" {
  name     = var.webapp1_resource_group_name
  location = var.webapp1_resource_group_location
}
# App service plan-1
resource "azurerm_app_service_plan" "example1" {
  name                = var.webapp1_app_service_plan_name
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
# App service-1
resource "azurerm_app_service" "example1" {
  name                = var.webapp1_app_service_name
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  app_service_plan_id = azurerm_app_service_plan.example1.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
 
  app_settings = {
    "SOME_KEY" = "some-value"
  }
}
# Resource group-2
resource "azurerm_resource_group" "example2" {
  name     = var.webapp2_resource_group_name
  location = var.webapp2_resource_group_location
}
# App service plan-2
resource "azurerm_app_service_plan" "example2" {
  name                = var.webapp2_app_service_plan_name
  location            = azurerm_resource_group.example2.location
  resource_group_name = azurerm_resource_group.example2.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
# App service-2
resource "azurerm_app_service" "example2" {
  name                = var.webapp2_app_service_name
  location            = azurerm_resource_group.example2.location
  resource_group_name = azurerm_resource_group.example2.name
  app_service_plan_id = azurerm_app_service_plan.example2.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
 
  app_settings = {
    "SOME_KEY" = "some-value"
  }
}