
resource "azurerm_resource_group" "cp-gw-rg" {
  name = "${var.company}-rg"
  location = var.location
}
