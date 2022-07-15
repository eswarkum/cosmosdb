provider "azurerm" {
  features {}
}
resource "random_string" "random" {
  length  = 6
  special = false
  lower   = true
  upper   = false
}

resource "azurerm_cosmosdb_account" "db" {
  name                      = replace("cosmosdb-${local.name}","-", "")
  resource_group_name       = var.resource_group_name
  location                  = var.location
  offer_type                = "Standard"
  kind                      = var.kind
  enable_automatic_failover = true
  capabilities {
    name = "EnableAggregationPipeline"
  }
  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }
  capabilities {
    name = "EnableMongo"
  }
  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }
  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }
  geo_location {
    location          = var.location
    failover_priority = 0
  }
}

resource "azurerm_private_endpoint" "pe" {
  name                = "pe-${azurerm_cosmosdb_account.db.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.cosmosdb_subnet_id

  private_service_connection {
    name                           = "psc-${azurerm_cosmosdb_account.db.name}"
    private_connection_resource_id = azurerm_cosmosdb_account.db.id
    is_manual_connection           = false
    subresource_names          = var.subresource_names
  }

tags = var.tags
lifecycle {
  ignore_changes = [tags]
}


}

