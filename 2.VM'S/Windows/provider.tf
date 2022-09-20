# Terraform azure resource manager provider details will be given in this provider.tf file
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }
}