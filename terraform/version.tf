terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.71.0"
    }
    
  }
  backend "azurerm" {

    container_name       = "tfstatesuperapp"
    key                  = "superapp.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  skip_provider_registration = true
  features {
    
  }

}