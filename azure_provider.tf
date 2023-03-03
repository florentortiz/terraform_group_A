terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = azurerm_resource_group.GROUPE-A-RG-TF.name
    storage_account_name = "storageXXXXXXXX"
    container_name = "tfstate"
    key = "infra.tfstate"
  }
}

provider "azurerm" {
  features {}
  # subscription_id : "Ecole By Cap"
  subscription_id = "a177ac1b-f0e1-45e5-a6c4-80266ff85e1d"
}
