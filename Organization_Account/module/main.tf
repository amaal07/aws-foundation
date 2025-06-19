resource "aws_organizations_account" "new_account" {
  for_each = var.organizations_account_variables
  name = each.value.name
  email = each.value.email
  close_on_deletion = each.value.close_on_deletion
  iam_user_access_to_billing = each.value.iam_user_access_to_billing
  parent_id = each.value.parent_id
  role_name = each.value.role_name
}