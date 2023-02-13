data "azurerm_subnet" "subnet" {
    name             = var.subnet_name
    virtual_network_name = var.vnet_name
    resource_group_name = var.resource_group_name
}

resource "azurerm_api_management" "apim" {
    location                  = var.location
    name                      = var.apim_name 
    publisher_email           = var.publisher_email
    publisher_name            = var.publisher_name
    resource_group_name       = var.resource_group_name
    sku_name                  = var.sku_name 
    virtual_network_type      = var.virtual_network_type 

    virtual_network_configuration {
      subnet_id = data.azurerm_subnet.subnet.id
    } 

}