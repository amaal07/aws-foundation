variable "vpc_variables" {
  type = map(object({
    cidr_block = string
    enable_dns_support = bool
    enable_dns_hostnames = bool
    instance_tenancy = string

  }))
}

variable "subnet_variables" {
  type = map(object({
    vpc_id = string
    cidr_block = string
    availability_zone = string
    map_public_ip_on_launch = bool
     
  }))
}