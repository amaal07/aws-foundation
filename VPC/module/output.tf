output "output" {
  value = {for k, v in aws_vpc.vpc : k =>{
    vpc_id = v.id
  }
}
}