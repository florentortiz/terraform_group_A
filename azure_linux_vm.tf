# create an azure NIC

resource "azurerm_network_interface" "test-vm-groupe-a-nic" {
  name                = "${var.vm_name_pfx}-nic"
  location            = var.azure_resource_group_location
  resource_group_name = var.azure_resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.GROUPE-A-SUBNET-TF.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "test-vm-groupe-a-nic-fo" {
  name                = "${var.vm_name_pfx}-nic-fo"
  location            = var.azure_resource_group_location
  resource_group_name = var.azure_resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.GROUPE-A-SUBNET-TF.id
    private_ip_address_allocation = "Dynamic"
  }
}

#create vm
resource "azurerm_linux_virtual_machine" "test-vm-groupe-a" {
  name                            = var.vm_name_pfx
  resource_group_name             = var.azure_resource_group_name
  location                        = var.azure_resource_group_location
  size                            = "Standard_B1s" #allowed: Standard_B1ls Standard_B1ms Standard_B1s Standard_B2s Standard_D2s_v3 Standard_DS1_v2
  computer_name                   = "myvm"
  admin_username                  = "adminuser"
  admin_password                  = "Password1234!"
  disable_password_authentication = false


 network_interface_ids = [
    azurerm_network_interface.test-vm-groupe-a-nic.id,
  ]
 

  os_disk {
    name                 = "my-terraform-os-disk-${var.vm_name_pfx}"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
 
}

resource "azurerm_linux_virtual_machine" "test-vm-groupe-a-fo" {
  name                            = "${var.vm_name_pfx}-fo"
  resource_group_name             = var.azure_resource_group_name
  location                        = var.azure_resource_group_location
  size                            = "Standard_B1s" #allowed: Standard_B1ls Standard_B1ms Standard_B1s Standard_B2s Standard_D2s_v3 Standard_DS1_v2
  computer_name                   = "myvm-fo"
  admin_username                  = "adminuser"
  admin_password                  = "Password1234!"
  disable_password_authentication = false


 network_interface_ids = [
    azurerm_network_interface.test-vm-groupe-a-nic-fo.id,
  ]
 

  os_disk {
    name                 = "my-terraform-os-disk-${var.vm_name_pfx}-fo"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
 
}