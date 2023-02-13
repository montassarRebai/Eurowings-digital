module "production" {
 source  = "./modules/resources"
 
 
 subnet_name                    = "prod_subnet"
 vnet_name                      = "prod_vnet"
 resource_group_name            = "rg_prod"
 apim_name                      = "${var.apim_name}"
 location                       = "${var.location}"
 publisher_name                 = "${var.publisher_name}"
 publisher_email                 = "${var.publisher_email }"
 sku_name                       = "Premium_1"
 virtual_network_type           = "External"
 asp_name                       = "${var.asp_name}"
 os                             = "${var.os}"
 asp_sku_name                   = "${var.asp_sku_name}"
 

}

module "staging" {
 source  = "./modules/resources"
 
 
 subnet_name                    = "stg_subnet"
 vnet_name                      = "stg_vnet"
 resource_group_name            = "rg_stg"
 apim_name                      = "${var.apim_name}"
 location                       = "${var.location}"
 publisher_name                 = "${var.publisher_name}"
 publisher_email                = "${var.publisher_email}"
 sku_name                       = "Developer_1"
 virtual_network_type           = "Internal"
 asp_name                       = "${var.asp_name}"
 os                             = "${var.os}"
 asp_sku_name                   = "${var.asp_sku_name}"
}
