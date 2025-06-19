output "output" {
  value = {for k, v in aws_route_table.private : k =>{
    route_table_id = v.id
  }
}
}