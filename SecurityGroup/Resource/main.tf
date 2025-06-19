module "security_group" {
  source = "../module"
  security_group_variables = local.security_group_variables
  security_group_ingressrules_variables = local.security_group_ingressrules_variables
  security_group_egressrules_variables = local.security_group_egressrules_variables
}