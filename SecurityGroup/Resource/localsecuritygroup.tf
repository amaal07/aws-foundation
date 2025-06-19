locals {
    security_group_variables ={
    sg-001 = {
        vpc_id = "vpc-0fd2b7c96374a77cd"
        name = "route53-sg"
        description = "security group for route 53"
        revoke_rules_on_delete = true
        }
  }

  security_group_egressrules_variables ={
    sgo-001 = {
    description      = "egress rule"
    from_port        = 53
    to_port          = 53
    protocol         = "udp"
    cidr_ipv4      = "10.130.10.0/24"
    security_group_id = module.security_group.output.sg-001.security_group_id
        }
    sgo-002 = {
    description      = "egress rule2"
    from_port        = 53
    to_port          = 53
    protocol         = "udp"
    cidr_ipv4      = "10.130.20.0/24"
    security_group_id = module.security_group.output.sg-001.security_group_id
        }
  }

  security_group_ingressrules_variables ={
    sgi-001 = {
    description      = "ingress rule"
    from_port        = 53
    to_port          = 53
    protocol         = "udp"
    cidr_ipv4      = "10.130.10.0/24"
    security_group_id = module.security_group.output.sg-001.security_group_id
        }
    sgi-002 = {
    description      = "ingress rule2"
    from_port        = 53
    to_port          = 53
    protocol         = "udp"
    cidr_ipv4      = "10.130.20.0/24"
    security_group_id = module.security_group.output.sg-001.security_group_id
        }
  }
}



