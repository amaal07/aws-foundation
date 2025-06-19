variable "internet_gateway_variables" {
  type = map(object({
    vpc_id = string
  }))
}