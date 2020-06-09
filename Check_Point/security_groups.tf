#Gateway NSG
resource "azurerm_network_security_group" "cp-gw-nsg" {
  depends_on=[azurerm_resource_group.cp-gw-rg]
  name = "cp-gw-nsg"
  location            = azurerm_resource_group.cp-gw-rg.location
  resource_group_name = azurerm_resource_group.cp-gw-rg.name
  security_rule {
    name                       = "Any"
    description                = "Any"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  tags = {
    environment = var.environment
  }
}



