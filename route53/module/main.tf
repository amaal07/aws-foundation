resource "aws_route53_resolver_endpoint" "foo" {
    for_each = var.route53_resolver_endpoint_variables
  name                   = each.value.name
  direction              = each.value.direction
  resolver_endpoint_type = each.value.resolver_endpoint_type
  

  security_group_ids = each.value.security_group_ids

  dynamic "ip_address" {
    for_each = each.value.ip_address1  != null ? [each.value.ip_address1] : []
    content {
      subnet_id = ip_address.value.subnet_id
      ip = ip_address.value.ip
    }
  }

  dynamic "ip_address" {
    for_each = each.value.ip_address2 != null ? [each.value.ip_address2] : []
    content {
      subnet_id = ip_address.value.subnet_id
      ip = ip_address.value.ip
    }
  }
 /* ip_address {
    subnet_id = aws_subnet.sn1.id
  }

  ip_address {
    subnet_id = aws_subnet.sn2.id
    ip        = "10.0.64.4"
  }*/

  protocols = each.value.protocols

  tags = {
    Environment = "Prod"
  }
}