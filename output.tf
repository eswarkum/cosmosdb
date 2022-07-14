output "cosmosdb_name" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.id
}
output "azurerm_private_endpoint" {
  description = "The private endpoint name"
  value       = azurerm_private_endpoint.pe.id
}