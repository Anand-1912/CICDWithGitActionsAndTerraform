locals {
name_suffix                              = "001"
  location                                 = "north europe"
  location_suffix                          = "northeurope"
  application_name                         = "superapp"  
  resource_group_name                      = "rg-${local.application_name}-${var.environment}-${local.location_suffix}-${local.name_suffix}"
  #storage_account_tfstate_name             = "stsapptfstatefile${var.environment}${local.name_suffix}"
  storage_account_name                     = "st${local.application_name}docs${var.environment}${local.name_suffix}"
}