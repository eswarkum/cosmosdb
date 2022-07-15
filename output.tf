output "cosmosdb_name" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.name
}
output "cosmosdb_id" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.id
}
output "cosmosdb_endpoint" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.endpoint
}
output "cosmosdb_connectionstrings" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.cosmosdb_connectionstrings
}
output "cosmosdb_masterkey" {
  description = "Cosmos db name"
  value       = azurerm_cosmosdb_account.db.primary_master_key
}
