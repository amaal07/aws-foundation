locals {
  subnet_information = flatten([
    for k in var.route_table_association_variables : [
        for subnet in k.subnet_id : {
            route_table_id = k.route_table_id
            subnet_id = subnet
        }
    ]
  ])
    }
 resource "aws_route_table" "private" {
  for_each = var.route_table_variables
  vpc_id = each.value.vpc_id

  dynamic "route" {
    for_each = each.value.route != null ? [each.value.route] : []
    content {
      cidr_block = route.value.cidr_block
      nat_gateway_id = route.value.nat_gateway_id
    }
  }
}

resource "aws_route_table_association" "private" {
  #for_each = var.route_table_association_variables
  for_each = { for k in local.subnet_information : "${k.subnet_id}" => k }
  subnet_id = each.value.subnet_id
  route_table_id = each.value.route_table_id
}