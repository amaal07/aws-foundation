data "aws_networkmanager_core_network_policy_document" "example" {
  core_network_configuration {
    asn_ranges = ["64512-65534"]

    edge_locations {
      location = "us-west-2"
      asn      = "64513"
    }

    edge_locations {
      location = "us-east-1"
      asn      = "64512"
    }
  }

  segments {
    name = "developement"
    description = "segment for dev"
    require_attachment_acceptance = true
    isolate_attachments = false
    
    
  }

  segments {
    name = "production"
    require_attachment_acceptance = false
    description = "seggment for prod"
    isolate_attachments = true
    
  }

 segments {
    name = "sharedservices"
    description = "Central shared segment for common services"
    require_attachment_acceptance = false
    isolate_attachments = false
    
  }

  segment_actions {
    segment = "sharedservices"
    action = "share"
    share_with = ["*"]
    mode = "attachment-route"
    description = "Share the shared services segment with all attachments"
  }

  
  
  

    

     
   
}
  
  resource "aws_networkmanager_core_network_policy_attachment" "example" {
  for_each =   var.core_network_policy_variable
  core_network_id = each.value.core_network_id
  #policy_document = file("${path.module}/policy1.json")
  policy_document = data.aws_networkmanager_core_network_policy_document.example.json
}