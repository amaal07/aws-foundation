locals {
  core_network_variable = {
    core-001 = {
       global_network_id = "global-network-0b421880f75d98b05"
       create_base_policy = true
       base_policy_regions = ["us-west-2", "us-east-1"]

    }
  }
}