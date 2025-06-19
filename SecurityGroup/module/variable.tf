variable "security_group_variables" {
  type = map(object({
    vpc_id = string
    name  = string
    description = string
    revoke_rules_on_delete = bool
    
  }))
}

variable "security_group_ingressrules_variables" {
  type = map(object({
    description      = string
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_ipv4      = string
    security_group_id = string
  }))
}

variable "security_group_egressrules_variables" {
  type = map(object({
    description      = string
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_ipv4     = string
    security_group_id = string
  }))
}