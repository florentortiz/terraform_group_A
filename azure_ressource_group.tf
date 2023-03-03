# Create a resource group
resource "azurerm_resource_group" "GROUPE-A-RG-TF" {
  name     = var.azure_resource_group_name
  location = var.azure_resource_group_location
}