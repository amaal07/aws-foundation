locals {
  organizations_account_variables ={
    account-001 = {
        name = "connectivity"
        parent_id = "r-d0zf"
        email   = "swarnitakhanar@gmail.com"
        close_on_deletion = true
        iam_user_access_to_billing = "ALLOW"
        role_name = "Network"
         }

    account-002 = {
        name = "security"
        parent_id = "r-d0zf"
        email   = "swarnitakhanar@gmail.com"
        close_on_deletion = true
        iam_user_access_to_billing = "ALLOW"
        role_name = "security"
         }
}
}