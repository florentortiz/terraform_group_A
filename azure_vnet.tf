# Create a virtual network within the resource group
resource "azurerm_virtual_network" "GROUPE-A-VNET-TF" {
  name                = var.azure_vnet_name
  resource_group_name = var.azure_resource_group_name
  location            = var.azure_resource_group_location
  address_space       = ["10.0.0.0/16"]
}