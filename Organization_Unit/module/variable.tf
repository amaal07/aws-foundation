variable "organizational_unit_variables" {
  type = map(object({
    parent_id = string
    name =   string
  }))
}