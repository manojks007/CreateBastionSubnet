variable "terrastorerg" {
  type        = string
  description = "The name of the backend storage account resource group"
  default     = "MKSRG10"
}

variable "terrastoreacc" {
  type        = string
  description = "The name of the backend storage account"
  default     = "mksterrastore10"
}

variable "terracontainer" {
  type = string
  description = "The container name for the backend config"
  default = "terracontr10"
}

variable "terrastrgkey" {
  type = string
  description = "The access key for the storage account"
  default = "mks10.tfstate"						
}

variable "resourcegroup_name" {
  type        = string
  description = "The name of the resource group"
  default     = "terrarg10"												   
}

variable "location" {
  type        = string
  description = "The region for the deployment"
  default     = "centralus"							
}

variable "tags" {
  type        = map(string)
  description = "Tags used for the deployment"
  default = {
    "Environment" = "Lab"
    "Owner"       = "mks"
  }
}

variable "vnet_name" {
  type        = string
  description = "The name of the vnet"
  default     = "terravnet10"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "the address space of the VNet"
  default     = ["10.13.0.0/16"]
}

variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
    subnet_3 = {
      name             = "subnet_3"
      address_prefixes = ["10.13.3.0/24"]
    }
    # The name must be AzureBastionSubnet
    bastion_subnet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}

variable "bastionhost_name" {
  type        = string
  description = "The name of the basion host"
  default     = "terra10bastionhost"
}
