variable "apim_name" {
  type          = string  
  description   = "api management name"  
}    


variable "resource_group_name" {
  type          = string  
  description   = "resource group name"
}    

variable "location" {
  type          = string  
  description   = "resources' location"  
}    


variable "sku_name" {
  type          = string  
  description   = "api management sku"  
}    

variable "publisher_name" {
  type          = string  
  description   = "api management publisher neam"  
}    

variable "publisher_email" {
  type          = string  
  description   = "api management publisher email"  
}    

variable "virtual_network_type" {
  type          = string  
  description   = "api management virtual network type"  
} 


variable "subnet_name" {
  type          = string  
  description   = "Subnet name" 
}


variable "vnet_name" {
  type          = string  
  description   = "virtual network name" 
}

variable "asp_name" {
  type          = string  
  description   = "azure service plan name"  
} 

variable "os" {
  type          = string  
  description   = "azure service plan OS"  
} 

variable "asp_sku_name" {
  type          = string  
  description   = "azure service plan sku"  
}