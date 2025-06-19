variable "core_network_variable" {
  type = map(object({
    global_network_id = string
    base_policy_regions = list(string)
    create_base_policy = bool
  }))
}