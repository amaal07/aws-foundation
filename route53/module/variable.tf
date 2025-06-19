variable "route53_resolver_endpoint_variables" {
  type = map(object({
    name                            = string
    direction                       = string
    resolver_endpoint_type          = string
    protocols                       = list(string)
    security_group_ids              = list(string)
    ip_address1                     = object({
      subnet_id = string
      ip = string
    })
    ip_address2                      = object({
      subnet_id = string
      ip = string
    })
    #security_group_id = string
  }))
}