terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend-mgb-0001"
    storage_account_name = "samgbaend1jkrxbpmv9"
    container_name       = "tfstate"
    key                  = "test-backend.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
  features {}
}

resource "azurerm_resource_group" "rg_test" {
  name     = "rg-mgb-backend-test"
  location = "westeurope"
}