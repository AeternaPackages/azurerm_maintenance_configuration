locals {
  maintenance_configurations = { for k1, v1 in var.maintenance_configurations : k1 => { in_guest_user_patch_mode = v1.in_guest_user_patch_mode, install_patches = v1.install_patches, location = v1.location, name = v1.name, properties = v1.properties, resource_group_name = v1.resource_group_name, scope = v1.scope, tags = v1.tags, visibility = v1.visibility, window = v1.window } }

  maintenance_assignment_dedicated_hosts = merge([
    for k1, v1 in var.maintenance_configurations : {
      for k2, v2 in coalesce(v1.maintenance_assignment_dedicated_hosts, {}) :
      "${k1}/${k2}" => merge(v2, {
        maintenance_configuration_id = module.maintenance_configurations.maintenance_configurations["${k1}"].id
      })
    }
  ]...)

  maintenance_assignment_dynamic_scopes = merge([
    for k1, v1 in var.maintenance_configurations : {
      for k2, v2 in coalesce(v1.maintenance_assignment_dynamic_scopes, {}) :
      "${k1}/${k2}" => merge(v2, {
        maintenance_configuration_id = module.maintenance_configurations.maintenance_configurations["${k1}"].id
      })
    }
  ]...)

  maintenance_assignment_virtual_machines = merge([
    for k1, v1 in var.maintenance_configurations : {
      for k2, v2 in coalesce(v1.maintenance_assignment_virtual_machines, {}) :
      "${k1}/${k2}" => merge(v2, {
        maintenance_configuration_id = module.maintenance_configurations.maintenance_configurations["${k1}"].id
      })
    }
  ]...)

  maintenance_assignment_virtual_machine_scale_sets = merge([
    for k1, v1 in var.maintenance_configurations : {
      for k2, v2 in coalesce(v1.maintenance_assignment_virtual_machine_scale_sets, {}) :
      "${k1}/${k2}" => merge(v2, {
        maintenance_configuration_id = module.maintenance_configurations.maintenance_configurations["${k1}"].id
      })
    }
  ]...)
}

module "maintenance_configurations" {
  source                     = "git::https://github.com/AeternaModules/azurerm_maintenance_configuration.git?ref=v4.80.0"
  maintenance_configurations = local.maintenance_configurations
}

module "maintenance_assignment_dedicated_hosts" {
  source                                 = "git::https://github.com/AeternaModules/azurerm_maintenance_assignment_dedicated_host.git?ref=v4.80.0"
  maintenance_assignment_dedicated_hosts = local.maintenance_assignment_dedicated_hosts
  depends_on                             = [module.maintenance_configurations]
}

module "maintenance_assignment_dynamic_scopes" {
  source                                = "git::https://github.com/AeternaModules/azurerm_maintenance_assignment_dynamic_scope.git?ref=v4.80.0"
  maintenance_assignment_dynamic_scopes = local.maintenance_assignment_dynamic_scopes
  depends_on                            = [module.maintenance_configurations]
}

module "maintenance_assignment_virtual_machines" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_maintenance_assignment_virtual_machine.git?ref=v4.80.0"
  maintenance_assignment_virtual_machines = local.maintenance_assignment_virtual_machines
  depends_on                              = [module.maintenance_configurations]
}

module "maintenance_assignment_virtual_machine_scale_sets" {
  source                                            = "git::https://github.com/AeternaModules/azurerm_maintenance_assignment_virtual_machine_scale_set.git?ref=v4.80.0"
  maintenance_assignment_virtual_machine_scale_sets = local.maintenance_assignment_virtual_machine_scale_sets
  depends_on                                        = [module.maintenance_configurations]
}

