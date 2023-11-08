variable "storage_account_data" {
  type = map(object({
    # Required
    enabled                  = bool
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string

    # Optional
    account_kind = optional(string)
  }))
}
