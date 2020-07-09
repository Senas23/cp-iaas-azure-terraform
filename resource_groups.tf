
resource "azurerm_resource_group" "cp-gw-rg" {
  name = "cp-gw-rg"
  location = var.location
}
