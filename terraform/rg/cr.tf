data "ibm_resource_group" "rg" {
  for_each = toset(var.user_list)
  name     = "rg-${each.value}"
}
resource "ibm_cr_namespace" "namespace" {
  for_each = data.ibm_resource_group.rg

  name              = "cr-${replace(each.value.name, "/^rg-/", "")}"
  resource_group_id = each.value.id
}