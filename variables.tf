## Metadata ##
variable "environment" {
	description = "A name for the environment"
	default = "dev"
}

## Environment variables ##
variable "resource_group_name" {
	description = "Name of RG the environment will run inside"
}
variable "resource_group_location" {
	description = "Location of the RG the environment will run inside"
	default = "West Europe"
}

## ACR variables ##
variable "registry_name" {
	description = "A name for the registry"
}

