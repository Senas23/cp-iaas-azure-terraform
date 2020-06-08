# Create storage account for boot diagnostics
resource "azurerm_storage_account" "cp-mgmt-storage-account" {
    name                        = "diag${random_id.randomId.hex}"
    resource_group_name         = azurerm_resource_group.cp-mgmt-rg.name
    location                    = azurerm_resource_group.cp-mgmt-rg.location
    account_tier                = "Standard"
    account_replication_type    = "LRS"

}

# Create storage account for GW boot diagnostics
resource "azurerm_storage_account" "cp-gw-storage-account" {
    name                        = "diag${random_id.randomId.hex}"
    resource_group_name         = azurerm_resource_group.cp-gw-rg.name
    location                    = azurerm_resource_group.cp-gw-rg.location
    account_tier                = "Standard"
    account_replication_type    = "LRS"

}
