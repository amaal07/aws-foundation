attachment_policies {
      rule_number = 100
      action {
        association_method = "constant"
        segment = "sharedservices"
      }
      condition_logic = "or"
      conditions {
        type = "tag-value"
        operator = "equals"
        key = "NetworkTier"
        value = "sharedservices"
        
      }
    }


    segment_actions{
      action =  "create-route"
      segment = "sharedservices"
      destination_cidr_blocks = ["0.0.0.0/0"]
      description = "sharedservices network route"
      
    }
    segment_actions {
      action =  "create-route"
      segment = "production"
      destination_cidr_blocks = ["10.10.0.0/16"]
      description = "prod network route"
    }
    
    segment_actions{

      action =  "create-route"
      segment = "developement"
      destination_cidr_blocks = ["10.20.0.0/16"]
      description = "dev network route"
      
    }