module "route53" {
  source = "../module"
  route53_resolver_endpoint_variables = local.route53_resolver_endpoint_variables
        }