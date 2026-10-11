data "databricks_users" "users_lookup" {
  for_each = var.users_lookup

  api              = each.value.api
  extra_attributes = each.value.extra_attributes
  filter           = each.value.filter
  provider_config  = each.value.provider_config
  users            = each.value.users
}

