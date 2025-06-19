locals {
  core_network_policy_variable = {
    policy-001 = {
       core_network_id = module.core_network.output.core-001.core_network_id
           }
  }
}