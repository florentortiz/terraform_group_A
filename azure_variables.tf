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