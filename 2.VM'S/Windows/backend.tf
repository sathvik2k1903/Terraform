# terraform backend configuration for terraform.tfstate file
terraform{
  backend "azurerm"{
     # storage_account_name = "terraform2112"
     # container_name       = "terraform5212"
     # key                  = "terraform.tfstate"
     # use_azuread_auth     = "true"
     # subscription_id      = "0c895a63-6145-4be8-aa9a-7fe3b83064ae"
  }
}