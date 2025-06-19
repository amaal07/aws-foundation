locals {
  vpc_variables ={
    vpc-001 = {
        cidr_block = "10.0.20.0/24"
        enable_dns_support = false
        enable_dns_hostnames = false
        instance_tenancy = "default"
  }
}

subnet_variables ={
    sub-001 = {
        cidr_block = "10.0.20.0/28"
        map_public_ip_on_launch = false
        availability_zone = "us-east-1a"
        vpc_id = module.vpc.output.vpc-001.vpc_id
  }
  sub-002 = {
        cidr_block = "10.0.20.16/28"
        map_public_ip_on_launch = false
        availability_zone = "us-east-1b"
        vpc_id = module.vpc.output.vpc-001.vpc_id
  }
}
}