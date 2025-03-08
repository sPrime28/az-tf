# main.tf
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-aks" {
  name     = "rg-aks"  # Name of the resource group
  location = "East US"            # Azure region
}

resource "azurerm_resource_group" "rg-acr" {
  name     = "rg-acr"  # Name of the resource group
  location = "East US"            # Azure region
}