output "account_id" {
  value = data.azurerm_client_config.current.client_id
}

output "current_client_config" {
  value = data.azurerm_client_config.current
}

output "default_common_tags" {

  value = local.tags
}

