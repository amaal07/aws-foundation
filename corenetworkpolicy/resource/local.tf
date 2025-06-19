locals {
    segment = {   
                production = {
      description = "Production environment segment"
      isolate_attachments = true
      require_attachment_acceptance = true
      share_with = ["sharedServices"]
    },
    development = {
      description = "Development environment segment"
      isolate_attachments = true
      require_attachment_acceptance = false
      share_with = ["sharedServices"]
    },
    sharedServices = {
      description = "Shared services segment with firewall inspection"
      isolate_attachments = false
      require_attachment_acceptance = false
      share_with = []
    } 
    }
     
    }
    
 