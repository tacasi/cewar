# data "ibm_resource_group" "rg" {
#   for_each = toset(var.user_list)
#   name     = "wap2024-rg-${each.value}"
# }

# resource "ibm_cr_namespace" "namespace" {
#   for_each = data.ibm_resource_group.rg

#   name              = "wap2024-cr-${replace(each.value.name, "/^rg-/", "")}"
#   resource_group_id = each.value.id
# }

# resource "ibm_cr_retention_policy" "cr_retention_policy" {
#   for_each = data.ibm_resource_group.rg
#   namespace = "wap2024-cr-${replace(each.value.name, "/^rg-/", "")}"

#   images_per_repo = 2
#   retain_untagged = false
# }