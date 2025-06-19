variable "route_table_variables" {
  type = map(object({
    vpc_id = string
    route = object({
      cidr_block = string
      nat_gateway_id = string
    })
  }))
}

variable "route_table_association_variables" {
  type = map(object({
    subnet_id = list(string)
    route_table_id = string
  }))
}