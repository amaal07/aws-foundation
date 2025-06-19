module "route_table" {
  source = "../module"
  route_table_variables = local.route_table_variables
  route_table_association_variables = local.route_table_association_variables
}