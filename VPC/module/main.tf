resource "aws_vpc" "vpc" {
  for_each = var.vpc_variables
  cidr_block = each.value.cidr_block
  enable_dns_support = each.value.enable_dns_support
  enable_dns_hostnames = each.value.enable_dns_hostnames
  instance_tenancy = each.value.instance_tenancy
}

resource "aws_subnet" "subnet" {
  for_each = var.subnet_variables
  vpc_id = each.value.vpc_id
  cidr_block = each.value.cidr_block
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  availability_zone = each.value.availability_zone
}