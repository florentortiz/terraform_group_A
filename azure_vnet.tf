# Create a virtual network within the resource group
resource "azurerm_virtual_network" "GROUPE-A-VNET-TF" {
  name                = "GROUPE-A-VNET-TF"
  resource_group_name = azurerm_resource_group.GROUPE-A-RG-TF.name
  location            = azurerm_resource_group.GROUPE-A-RG-TF.location
  address_space       = ["10.0.0.0/16"]
}