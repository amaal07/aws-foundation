output "output" {
  value = {for k, v in aws_security_group.securitygroup : k =>{
    security_group_id = v.id
  }
}
}