variable "organizations_account_variables" {
  type = map(object({
    name = string
    email = string
    close_on_deletion = bool
    iam_user_access_to_billing =  string
    parent_id = string
    role_name = string
  }))
}