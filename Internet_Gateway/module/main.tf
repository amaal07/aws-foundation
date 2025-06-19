resource "aws_internet_gateway" "gw" {
  for_each = var.internet_gateway_variables
  vpc_id = each.value.vpc_id

  
}