resource "azurerm_storage_account" "tfstate" {
  name                     = var.azure_storage_account
  resource_group_name      = azurerm_resource_group.GROUPE-A-RG-TF.name
  location                 = azurerm_resource_group.GROUPE-A-RG-TF.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  #allow_blob_public_access = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.azure_container_name
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# commande de la doc :
# $ACCOUNT_KEY=(Get-AzStorageAccountKey -ResourceGroupName tfstate-RG-GRPA -Name satfstategrpa)[0].value
# $env:ARM_ACCESS_KEY=$ACCOUNT_KEY

#$RESOURCE_GROUP_NAME='tfstate-RG-GRPA'
#$STORAGE_ACCOUNT_NAME="satfstategrpa"
#$CONTAINER_NAME='tfstategrpa'

# Create resource group
#New-AzResourceGroup -Name $RESOURCE_GROUP_NAME -Location WestEurope

# Create storage account
#$storageAccount = New-AzStorageAccount -ResourceGroupName $RESOURCE_GROUP_NAME -Name $STORAGE_ACCOUNT_NAME -SkuName Standard_LRS -Location WestEurope -AllowBlobPublicAccess $false

# Create blob container
#New-AzStorageContainer -Name $CONTAINER_NAME -Context $storageAccount.context