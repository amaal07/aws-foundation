variable "segment" {
  description = "Map of segments to create in the Core Network"
  type = map(object({
    description = string
    isolate_attachments = bool
    require_attachment_acceptance = bool
    share_with = optional(list(string), [])
  }))

  default = {
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

/*variable "policy_variables" {
  type = map(object({
    segmentoptions = map(object({
      description = string
      isolate_attachments = bool
      require_attachment_acceptance = bool
      share_with = list(string)
    }))
  }))
}*/