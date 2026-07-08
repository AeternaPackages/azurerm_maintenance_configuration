# --- azurerm_maintenance_configuration ---
output "maintenance_configurations" {
  description = "All maintenance_configuration resources"
  value       = module.maintenance_configurations.maintenance_configurations
}
output "maintenance_configurations_in_guest_user_patch_mode" {
  description = "List of in_guest_user_patch_mode values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.in_guest_user_patch_mode]
}
output "maintenance_configurations_install_patches" {
  description = "List of install_patches values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.install_patches]
}
output "maintenance_configurations_location" {
  description = "List of location values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.location]
}
output "maintenance_configurations_name" {
  description = "List of name values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.name]
}
output "maintenance_configurations_properties" {
  description = "List of properties values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.properties]
}
output "maintenance_configurations_resource_group_name" {
  description = "List of resource_group_name values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.resource_group_name]
}
output "maintenance_configurations_scope" {
  description = "List of scope values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.scope]
}
output "maintenance_configurations_tags" {
  description = "List of tags values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.tags]
}
output "maintenance_configurations_visibility" {
  description = "List of visibility values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.visibility]
}
output "maintenance_configurations_window" {
  description = "List of window values across all maintenance_configurations"
  value       = [for k, v in module.maintenance_configurations.maintenance_configurations : v.window]
}


# --- azurerm_maintenance_assignment_dedicated_host ---
output "maintenance_assignment_dedicated_hosts" {
  description = "All maintenance_assignment_dedicated_host resources"
  value       = module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts
}
output "maintenance_assignment_dedicated_hosts_dedicated_host_id" {
  description = "List of dedicated_host_id values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts : v.dedicated_host_id]
}
output "maintenance_assignment_dedicated_hosts_location" {
  description = "List of location values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts : v.location]
}
output "maintenance_assignment_dedicated_hosts_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in module.maintenance_assignment_dedicated_hosts.maintenance_assignment_dedicated_hosts : v.maintenance_configuration_id]
}


# --- azurerm_maintenance_assignment_dynamic_scope ---
output "maintenance_assignment_dynamic_scopes" {
  description = "All maintenance_assignment_dynamic_scope resources"
  value       = module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes
}
output "maintenance_assignment_dynamic_scopes_filter" {
  description = "List of filter values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes : v.filter]
}
output "maintenance_assignment_dynamic_scopes_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes : v.maintenance_configuration_id]
}
output "maintenance_assignment_dynamic_scopes_name" {
  description = "List of name values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in module.maintenance_assignment_dynamic_scopes.maintenance_assignment_dynamic_scopes : v.name]
}


# --- azurerm_maintenance_assignment_virtual_machine ---
output "maintenance_assignment_virtual_machines" {
  description = "All maintenance_assignment_virtual_machine resources"
  value       = module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines
}
output "maintenance_assignment_virtual_machines_location" {
  description = "List of location values across all maintenance_assignment_virtual_machines"
  value       = [for k, v in module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines : v.location]
}
output "maintenance_assignment_virtual_machines_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_virtual_machines"
  value       = [for k, v in module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines : v.maintenance_configuration_id]
}
output "maintenance_assignment_virtual_machines_virtual_machine_id" {
  description = "List of virtual_machine_id values across all maintenance_assignment_virtual_machines"
  value       = [for k, v in module.maintenance_assignment_virtual_machines.maintenance_assignment_virtual_machines : v.virtual_machine_id]
}


# --- azurerm_maintenance_assignment_virtual_machine_scale_set ---
output "maintenance_assignment_virtual_machine_scale_sets" {
  description = "All maintenance_assignment_virtual_machine_scale_set resources"
  value       = module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets
}
output "maintenance_assignment_virtual_machine_scale_sets_location" {
  description = "List of location values across all maintenance_assignment_virtual_machine_scale_sets"
  value       = [for k, v in module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets : v.location]
}
output "maintenance_assignment_virtual_machine_scale_sets_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_virtual_machine_scale_sets"
  value       = [for k, v in module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets : v.maintenance_configuration_id]
}
output "maintenance_assignment_virtual_machine_scale_sets_virtual_machine_scale_set_id" {
  description = "List of virtual_machine_scale_set_id values across all maintenance_assignment_virtual_machine_scale_sets"
  value       = [for k, v in module.maintenance_assignment_virtual_machine_scale_sets.maintenance_assignment_virtual_machine_scale_sets : v.virtual_machine_scale_set_id]
}



