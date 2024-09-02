provider "azurerm" {
  alias           = "src"
  subscription_id = var.subscription_id
  features {

  }
}

locals {
  basename = lower("m${var.servicename}${var.deploy_environment}sa")
}

resource "azurerm_storage_account" "sa" {
  provider                   = azurerm.src
  name                       = local.basename
  resource_group_name        = var.resource_group_name
  location                   = var.resource_group_location
  account_kind               = var.account_kind
  account_tier               = var.account_tier
  account_replication_type   = var.account_replication_type
  access_tier                = var.access_tier
  min_tls_version            = var.min_tls_version
  https_traffic_only_enabled = var.https_traffic_only_enabled

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_storage_account_network_rules" "rules" {
  storage_account_id         = azurerm_storage_account.sa.id
  default_action             = "Deny"
  virtual_network_subnet_ids = var.subnet_ids
  bypass                     = ["AzureServices"]
}
