terraform {
  required_providers {
    azurerm = {
      sousource = "hashicorp/azurerm"
      version   = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "mayargdeop"
  location = "westus2"
}