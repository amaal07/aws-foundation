output "output" {
  value = {for k, v in aws_route53_resolver_endpoint.foo : k =>{
    resolver_id = v.id
  }
}
}