resource "azurerm_storage_account" "example" {
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_kind             = each.value.account_kind
  account_replication_type = each.value.account_replication_type

  tags = {
    environment = "staging"
    managedby   = "terraform"
  }
}
