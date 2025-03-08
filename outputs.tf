# outputs.tf
output "resource_group_name_aks" {
  value = azurerm_resource_group.rg-aks.name
}

output "resource_group_location_aks" {
  value = azurerm_resource_group.rg-aks.location
}

output "resource_group_name_acr" {
  value = azurerm_resource_group.rg-acr.name
}

output "resource_group_location_acr" {
  value = azurerm_resource_group.rg-acr.location
}