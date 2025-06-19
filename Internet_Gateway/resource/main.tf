module "internet_gateway" {
  source = "../module"
  internet_gateway_variables = local.internet_gateway_variables
}