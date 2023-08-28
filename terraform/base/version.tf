terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.71.0"
    }
  }
}

provider "azurerm" {
  # The SP does not have Contributor access, Need to skip Provider registration. See docs can be found here: https://www.terraform.io/docs/providers/azurerm/index.html#skip_provider_registration
  skip_provider_registration = true
  
  features {}
}