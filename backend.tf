# backend.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"          # Resource group where the storage account exists
    storage_account_name = "sprimestoragetfstate001"   # Name of the storage account
    container_name       = "tfstate"             # Name of the storage container
    key                  = "terraform.tfstate"   # Name of the state file
  }
}
