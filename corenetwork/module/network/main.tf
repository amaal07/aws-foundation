resource "aws_networkmanager_core_network" "example" {
  for_each = var.core_network_variable
  global_network_id = each.value.global_network_id
  create_base_policy = each.value.create_base_policy
  base_policy_regions =  each.value.base_policy_regions
  
} 