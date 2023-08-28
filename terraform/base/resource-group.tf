resource "azurerm_resource_group" "res_group"  {
  name = local.resource_group_name
  location = local.location
}