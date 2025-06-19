resource "aws_security_group" "securitygroup" {
  for_each = var.security_group_variables
  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id
  revoke_rules_on_delete = each.value.revoke_rules_on_delete

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  for_each = var.security_group_ingressrules_variables
  security_group_id = each.value.security_group_id
  cidr_ipv4         = each.value.cidr_ipv4
  from_port         = each.value.from_port
  ip_protocol       = each.value.protocol
  to_port           = each.value.to_port
  
}



resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  for_each = var.security_group_egressrules_variables
  security_group_id = each.value.security_group_id
  cidr_ipv4         = each.value.cidr_ipv4
  from_port         = each.value.from_port
  ip_protocol       = each.value.protocol
  to_port           = each.value.to_port
  
}

