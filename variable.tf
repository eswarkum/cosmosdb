variable "proj_code" {
  description = "Short COSMOSDB project code i.e django."
}
variable "env" {
  description = "Short COSMOSDB project env name i.e dev."
}
variable "resource_group_name" {
  description = "COSMODDB Project resource Group"
  # type        = string
}
variable "location" {
  description = "Short COSMOSDB location name i.e West Europe."
  type        = string
  default = "South India"
}
variable "tags" {
  description = "Tags to associate with your COSMOSDB"
  type        = map(string)
  default     = {}
}
variable "cosmosdb_subnet_id" {
  description = "Subnet ID pf the COSMOSDB private endpoint"
}
#variable "cosmos_db_account_name" {
  
#}
variable "failover_location" {
  default = "West India"
}
variable "consistency_level" {
  default = "BoundedStaleness"
}
variable "max_interval_in_seconds" {
 
}
variable "max_staleness_prefix" {
  
}
variable "kind" {
   description = "Please enter kind for for your cosmosDB"
  
}

variable "subresource_names" {
   description = "Please enter kind for for your cosmosDB"
   type = list(string)
  
}
