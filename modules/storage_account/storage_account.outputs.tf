output "storage_account_output" {
  value = zipmap(values(azurerm_storage_account.example)[*].name, values(azurerm_storage_account.example)[*])
}