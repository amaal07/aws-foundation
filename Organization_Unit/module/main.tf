resource "aws_organizations_organizational_unit" "new_organizational_unit" {
    for_each = var.organizational_unit_variables
    name = each.value.name
    parent_id = each.value.parent_id
  
}