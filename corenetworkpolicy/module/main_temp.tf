/*data "aws_networkmanager_core_network_policy_document" "this" {
       
  core_network_configuration {
    asn_ranges = ["64512-65534"]
    
    edge_locations {
      location = "us-east-1"
    }
    edge_locations {
      location = "us-west-2"
    }
  }

  # Dynamically create segments using for_each
  dynamic "segments" {
    for_each = var.segment
    content {
      name = segments.key
      description = segments.value.description
      isolate_attachments = segments.value.isolate_attachments
      require_attachment_acceptance = segments.value.require_attachment_acceptance
    }
  }

  # Dynamically create segment sharing actions
  dynamic "segment_actions" {
    for_each = { for k, v in var.segment : k => v if length(v.share_with) > 0 }
    content {
      action = "share"
      mode = "attachment-route"
      segment = segment_actions.key
      share_with = segment_actions.value.share_with
    }
  }

  # Add firewall inspection between segments
  /*segment_actions {
    action = "send-via"
    mode = "single-hop"
    segment_from = "production"
    segment_to = "development"
    via = "firewall-nfg"
  }*/

  # Attachment policies (using for_each for different matching conditions)
  /*dynamic "attachment_policies" {
    for_each = {
      "environment-tag" = {
        rule_number = 100
        conditions = [{
          type = "tag-exists"
          key = "Environment"
        }]
        action = {
          association_method = "tag"
          tag_value_of_key = "Environment"
        }
      },
      "shared-services" = {
        rule_number = 200
        conditions = [{
          type = "resource-id"
          operator = "equals"
          value = aws_vpc.firewall_vpc.id
        }]
        action = {
          association_method = "constant"
          segment = "sharedServices"
        }
      }
    }

    content {
      rule_number = attachment_policies.value.rule_number
      condition_logic = "or"
      
      dynamic "conditions" {
        for_each = attachment_policies.value.conditions
        content {
          type = conditions.value.type
          key = try(conditions.value.key, null)
          operator = try(conditions.value.operator, null)
          value = try(conditions.value.value, null)
        }
      }
      
      action {
        association_method = attachment_policies.value.action.association_method
        segment = try(attachment_policies.value.action.segment, null)
        tag_value_of_key = try(attachment_policies.value.action.tag_value_of_key, null)
      }
    }
  }
}*/

/*
{
         "Action": "put-firewall-rule-group",
        "Segment": "Shared-Services",
        "Direction": "INBOUND",
        "FirewallDomainListId": "firewall-domain-list-123456",
        "FirewallRuleGroupArn": "arn:aws:network-firewall:us-east-1:123456789012:firewall-rule-group/SharedFirewall",
        "Priority": 100,
       "Description": "Inbound firewall inspection for shared services"
      },
      
      ,
      
      {
        "Action": "attach-to-segment",
        "Segment": "Production",
        "AttachmentId": "attachment-1234567890",
        "Description": "Attach production VPC to segment"
      }*/

