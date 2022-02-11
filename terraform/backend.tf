terraform {
  backend "azurerm" {
  }
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.96.0"
    }
  }
}
