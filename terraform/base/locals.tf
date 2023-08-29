# resource "random_id" "random" {
#   byte_length = 8
# }

locals {
  name_suffix                              = "001"
  resource_group_name                      = "rg-superapp-${var.environment}-westeurope-${local.name_suffix}"
  storage_account_name                     = "stsapptfstatefile${var.environment}${local.name_suffix}"
  location                                 = "north europe"
  location_suffix                          = "northeurope"
}