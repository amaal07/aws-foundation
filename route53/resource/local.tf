locals {
    route53_resolver_endpoint_variables ={
    route53-001 = {
        vpc_id = "vpc-0fd2b7c96374a77cd"
        name = "route53-amal"
        direction = "INBOUND"
        resolver_endpoint_type = "IPV4"
        protocols = ["Do53", "DoH"]
        security_group_ids = ["sg-082ddd4fb23f01b49 "]
        ip_address1 = ({
        
            subnet_id = "subnet-001e282f6c12ff5ab"
            ip = "10.0.20.20"
        })
        
        ip_address2  = ({
          
            subnet_id = "subnet-0209feeabc5213a59"
            ip = "10.0.20.5" 
        })
        
        
        }

    route53-002 = {
        vpc_id = "vpc-0fd2b7c96374a77cd"
        name = "route53-amal-out"
        direction = "OUTBOUND"
        resolver_endpoint_type = "IPV4"
        protocols = ["Do53", "DoH"]
        security_group_ids = ["sg-082ddd4fb23f01b49 "]
        ip_address1 = ({
        
            subnet_id = "subnet-001e282f6c12ff5ab"
            ip = "10.0.20.22"
        })
        
        ip_address2 = ({
          
            subnet_id = "subnet-0209feeabc5213a59"
            ip = "10.0.20.6" 
        })
        
        
        
        }
        

    
        
  }

  
  }

  





