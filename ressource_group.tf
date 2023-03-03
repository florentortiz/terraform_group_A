
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "a177ac1b-f0e1-45e5-a6c4-80266ff85e1d"
}

# Create a resource group
resource "azurerm_resource_group" "GROUPE-A-RG-TF" {
  name     = "GROUPE-A-RG-TF"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "GROUPE-A-VNET-TF" {
  name                = "GROUPE-A-VNET-TF"
  resource_group_name = azurerm_resource_group.GROUPE-A-RG-TF.name
  location            = azurerm_resource_group.GROUPE-A-RG-TF.location
  address_space       = ["10.0.0.0/16"]
}