terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version   = "~> 3.0.2"
    }
  }

  cloud {
    organization = "deop-maya"

    workspaces {
      name = "OgrenmeWorkspace"
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