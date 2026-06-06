variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
