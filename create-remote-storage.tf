resource "azurerm_storage_account" "tfstate" {
  name                     = var.azure_storage_account
  resource_group_name      = azurerm_resource_group.GROUPE-A-RG-TF.name
  location                 = azurerm_resource_group.GROUPE-A-RG-TF.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.azure_container_name
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# commande de la doc :
# $ACCOUNT_KEY=(Get-AzStorageAccountKey -ResourceGroupName GROUPE-A-RG-TF -Name SA-tfstate-GROUPE-A)[0].value
# $env:ARM_ACCESS_KEY=$ACCOUNT_KEY