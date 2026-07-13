variable "maintenance_configurations" {
  description = <<EOT
Map of maintenance_configurations, attributes below
Required:
    - location
    - name
    - resource_group_name
    - scope
Optional:
    - in_guest_user_patch_mode
    - properties
    - tags
    - visibility
    - install_patches (block)
    - window (block)
Nested maintenance_assignment_dedicated_hosts (azurerm_maintenance_assignment_dedicated_host):
    Required:
        - dedicated_host_id
        - location
Nested maintenance_assignment_dynamic_scopes (azurerm_maintenance_assignment_dynamic_scope):
    Required:
        - name
        - filter (block)
Nested maintenance_assignment_virtual_machines (azurerm_maintenance_assignment_virtual_machine):
    Required:
        - location
        - virtual_machine_id
Nested maintenance_assignment_virtual_machine_scale_sets (azurerm_maintenance_assignment_virtual_machine_scale_set):
    Required:
        - location
        - virtual_machine_scale_set_id
EOT

  type = map(object({
    location                 = string
    name                     = string
    resource_group_name      = string
    scope                    = string
    in_guest_user_patch_mode = optional(string)
    properties               = optional(map(string))
    tags                     = optional(map(string))
    visibility               = optional(string)
    install_patches = optional(object({
      linux = optional(list(object({
        classifications_to_include    = optional(list(string))
        package_names_mask_to_exclude = optional(list(string))
        package_names_mask_to_include = optional(list(string))
      })))
      reboot = optional(string)
      windows = optional(list(object({
        classifications_to_include = optional(list(string))
        kb_numbers_to_exclude      = optional(list(string))
        kb_numbers_to_include      = optional(list(string))
      })))
    }))
    window = optional(object({
      duration             = optional(string)
      expiration_date_time = optional(string)
      recur_every          = optional(string)
      start_date_time      = string
      time_zone            = string
    }))
    maintenance_assignment_dedicated_hosts = optional(map(object({
      dedicated_host_id = string
      location          = string
    })))
    maintenance_assignment_dynamic_scopes = optional(map(object({
      name = string
      filter = object({
        locations       = optional(list(string))
        os_types        = optional(list(string))
        resource_groups = optional(list(string))
        resource_types  = optional(list(string))
        tag_filter      = optional(string)
        tags = optional(list(object({
          tag    = string
          values = list(string)
        })))
      })
    })))
    maintenance_assignment_virtual_machines = optional(map(object({
      location           = string
      virtual_machine_id = string
    })))
    maintenance_assignment_virtual_machine_scale_sets = optional(map(object({
      location                     = string
      virtual_machine_scale_set_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.maintenance_configurations) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.maintenance_configurations : [for kk in keys(coalesce(v0.maintenance_assignment_dedicated_hosts, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.maintenance_configurations : [for kk in keys(coalesce(v0.maintenance_assignment_dynamic_scopes, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.maintenance_configurations : [for kk in keys(coalesce(v0.maintenance_assignment_virtual_machines, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.maintenance_configurations : [for kk in keys(coalesce(v0.maintenance_assignment_virtual_machine_scale_sets, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
