module "core_network" {
  source = "../module/network"
  core_network_variable = local.core_network_variable
}

module "core_network_policy_attachment" {
  source = "../module/Corenetwork_policy_attachement"
  core_network_policy_variable = local.core_network_policy_variable
}