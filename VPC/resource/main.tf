module "vpc" {
  source = "../module"
  vpc_variables = local.vpc_variables
  subnet_variables = local.subnet_variables
}

