# --- azurerm_maintenance_configuration ---
output "maintenance_configurations_in_guest_user_patch_mode" {
  description = "Map of in_guest_user_patch_mode values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_in_guest_user_patch_mode
}

output "maintenance_configurations_install_patches" {
  description = "Map of install_patches values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_install_patches
}

output "maintenance_configurations_location" {
  description = "Map of location values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_location
}

output "maintenance_configurations_name" {
  description = "Map of name values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_name
}

output "maintenance_configurations_properties" {
  description = "Map of properties values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_properties
}

output "maintenance_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_resource_group_name
}

output "maintenance_configurations_scope" {
  description = "Map of scope values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_scope
}

output "maintenance_configurations_tags" {
  description = "Map of tags values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_tags
}

output "maintenance_configurations_visibility" {
  description = "Map of visibility values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_visibility
}

output "maintenance_configurations_window" {
  description = "Map of window values across all maintenance_configurations, keyed the same as var.maintenance_configurations"
  value       = module.maintenance_configurations.maintenance_configurations_window
}

# --- azurerm_maintenance_assignment_dedicated_host ---
output "maintenance_assignment_dedicated_hosts_dedicated_host_id" {
  description = "Map of dedicated_host_id values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts_dedicated_host_id
}

output "maintenance_assignment_dedicated_hosts_location" {
  description = "Map of location values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts_location
}

output "maintenance_assignment_dedicated_hosts_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts_maintenance_configuration_id
}

# --- azurerm_maintenance_assignment_dynamic_scope ---
output "maintenance_assignment_dynamic_scopes_filter" {
  description = "Map of filter values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes_filter
}

output "maintenance_assignment_dynamic_scopes_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes_maintenance_configuration_id
}

output "maintenance_assignment_dynamic_scopes_name" {
  description = "Map of name values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes_name
}

# --- azurerm_maintenance_assignment_virtual_machine ---
output "maintenance_assignment_virtual_machines_location" {
  description = "Map of location values across all maintenance_assignment_virtual_machines, keyed the same as var.maintenance_assignment_virtual_machines"
  value       = module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines_location
}

output "maintenance_assignment_virtual_machines_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_virtual_machines, keyed the same as var.maintenance_assignment_virtual_machines"
  value       = module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines_maintenance_configuration_id
}

output "maintenance_assignment_virtual_machines_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all maintenance_assignment_virtual_machines, keyed the same as var.maintenance_assignment_virtual_machines"
  value       = module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines_virtual_machine_id
}

# --- azurerm_maintenance_assignment_virtual_machine_scale_set ---
output "maintenance_assignment_virtual_machine_scale_sets_location" {
  description = "Map of location values across all maintenance_assignment_virtual_machine_scale_sets, keyed the same as var.maintenance_assignment_virtual_machine_scale_sets"
  value       = module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets_location
}

output "maintenance_assignment_virtual_machine_scale_sets_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_virtual_machine_scale_sets, keyed the same as var.maintenance_assignment_virtual_machine_scale_sets"
  value       = module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets_maintenance_configuration_id
}

output "maintenance_assignment_virtual_machine_scale_sets_virtual_machine_scale_set_id" {
  description = "Map of virtual_machine_scale_set_id values across all maintenance_assignment_virtual_machine_scale_sets, keyed the same as var.maintenance_assignment_virtual_machine_scale_sets"
  value       = module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets_virtual_machine_scale_set_id
}


