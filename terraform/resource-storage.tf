# Create the "private" Storage Account.
resource "azurerm_storage_account" "sa" {
  name                      = local.storage_account_name
  resource_group_name       = local.resource_group_name
  location                  = local.location
  account_tier              = "Standard"
  account_replication_type  = "LRS" #GRS
  enable_https_traffic_only = true
  public_network_access_enabled = true
  allow_nested_items_to_be_public = true

  blob_properties {
    delete_retention_policy{
      days = 31
    }    
    container_delete_retention_policy{
      days = 31
    }
  }
}

# Create input container
resource "azurerm_storage_container" "input" {
  name                  = "input"
  container_access_type = "private"
  storage_account_name  = azurerm_storage_account.sa.name
}
