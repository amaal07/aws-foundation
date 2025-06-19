locals {
  route_table_variables ={
    rt-001 = {
        vpc_id = "vpc-027e07c6cabc2c1ab"
        route = {
           cidr_block = "0.0.0.0/0"
           nat_gateway_id = "nat-08dd8b1cef852dbc5"
        }
        }
  }

    route_table_association_variables ={
    rta-001 = {
        subnet_id = ["subnet-0ca33f66c48e2c800", "subnet-013c8fcbf087507a4"]
        route_table_id = module.route_table.output.rt-001.route_table_id
        }
  }
}       