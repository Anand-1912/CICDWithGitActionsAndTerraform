# Create the "private" Storage Account.
resource "azurerm_storage_account" "sa" {
  name                      = local.storage_account_name
  resource_group_name       = local.resource_group_name
  location                  = local.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true  

  depends_on = [ azurerm_resource_group.rg ]
}

# Create input container
resource "azurerm_storage_container" "input" {
  name                  = "tfstatesuperapp"
  container_access_type = "private"
  storage_account_name  = azurerm_storage_account.sa.name

  depends_on = [ azurerm_storage_account.sa ]
}