variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - api
    - extra_attributes
    - filter
    - provider_config
    - users
EOT

  type = map(object({
    api              = optional(string)
    extra_attributes = optional(string)
    filter           = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    users = optional(list(object({
      active       = optional(bool)
      display_name = optional(string)
      emails = optional(list(object({
        display = optional(string)
        primary = optional(bool)
        ref     = optional(string)
        type    = optional(string)
        value   = optional(string)
      })))
      entitlements = optional(list(object({
        display = optional(string)
        primary = optional(bool)
        ref     = optional(string)
        type    = optional(string)
        value   = optional(string)
      })))
      external_id = optional(string)
      groups = optional(list(object({
        display = optional(string)
        primary = optional(bool)
        ref     = optional(string)
        type    = optional(string)
        value   = optional(string)
      })))
      id = optional(string)
      name = optional(object({
        family_name = optional(string)
        given_name  = optional(string)
      }))
      roles = optional(list(object({
        display = optional(string)
        primary = optional(bool)
        ref     = optional(string)
        type    = optional(string)
        value   = optional(string)
      })))
      schemas   = optional(list(string))
      user_name = optional(string)
    })))
  }))
}

