# Create a new Resource Group for ACR
resource "azurerm_resource_group" "rg_acr" {
  name     = "my-acr-resource-group"
  location = "East US"  # Change to your desired location
}

# Create a new Virtual Network for ACR
resource "azurerm_virtual_network" "vnet_acr" {
  name                = "my-acr-vnet"
  location            = azurerm_resource_group.rg_acr.location
  resource_group_name = azurerm_resource_group.rg_acr.name
  address_space       = ["10.1.0.0/16"]
}

# Create a Subnet for ACR
resource "azurerm_subnet" "acr_subnet" {
  name                 = "acr-subnet"
  resource_group_name  = azurerm_resource_group.rg_acr.name
  virtual_network_name = azurerm_virtual_network.vnet_acr.name
  address_prefixes     = ["10.1.1.0/24"]

  # Enable Service Endpoints for ACR
  service_endpoints = ["Microsoft.ContainerRegistry"]
}

# Create the Azure Container Registry (ACR)
resource "azurerm_container_registry" "acr" {
  name                = "sprimeacrregistry"
  resource_group_name = azurerm_resource_group.rg_acr.name
  location            = azurerm_resource_group.rg_acr.location
  sku                 = "Basic"
  admin_enabled       = false
}