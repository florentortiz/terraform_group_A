variable "azure_resource_group_name" {
	type = string
	description = "Azure resource group name for GroupA"
	sensitive = true
	default = "GROUPE-A-RG-TF"
}

variable "azure_resource_group_location" {
	type = string
	description = "Azure resource group location for GroupA"
	sensitive = true
	default = "West Europe"
}

variable "azure_vnet_name" {
	type = string
	description = "Azure VNet name for GroupA"
	sensitive = true
	default = "GROUPE-A-VNET-TF"
}

variable "azure_vnet_range" {
	type = string
	description = "Azure VNet subnet for GroupA"
	sensitive = true
	default = "10.0.0.0/16"
}

variable "azure_subnet_name" {
	type = string
	description = "Azure Subnet name for GroupA"
	sensitive = true
	default = "internal"
}

variable "vm_name_pfx" {
  description = "VM Names"
  default     = "test-vm-groupe-a" #to update by Groupe#
  type        = string
}


variable "azure_container_name" {
	type = string
	description = "Azure container for GroupA"
	sensitive = true
	default = "tfstate-GROUPE-A"
}

variable "azure_storage_account" {
	type = string
	description = "Azure storage account dedicated to tfstate for GroupA"
	sensitive = true
	default = "SA-tfstate-GROUPE-A"
}