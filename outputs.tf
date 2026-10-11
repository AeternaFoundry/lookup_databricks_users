output "users_lookup_api" {
  description = "Map of api values across all users_lookup, keyed the same as var.users_lookup except keys with no api are omitted"
  value       = { for k, v in data.databricks_users.users_lookup : k => v.api if v.api != null && length(v.api) > 0 }
}
output "users_lookup_extra_attributes" {
  description = "Map of extra_attributes values across all users_lookup, keyed the same as var.users_lookup except keys with no extra_attributes are omitted"
  value       = { for k, v in data.databricks_users.users_lookup : k => v.extra_attributes if v.extra_attributes != null && length(v.extra_attributes) > 0 }
}
output "users_lookup_filter" {
  description = "Map of filter values across all users_lookup, keyed the same as var.users_lookup except keys with no filter are omitted"
  value       = { for k, v in data.databricks_users.users_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "users_lookup_provider_config" {
  description = "Map of provider_config values across all users_lookup, keyed the same as var.users_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_users.users_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup except keys with no users are omitted"
  value       = { for k, v in data.databricks_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

