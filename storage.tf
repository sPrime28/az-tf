resource "azurerm_storage_account" "tfstate" {
  name                     = "sprimestoragetfstate001"
  resource_group_name      = "tfstate-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}