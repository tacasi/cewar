# data "ibm_resource_group" "rg" {
#   for_each = toset(var.user_list)
#   name     = "wap2024-rg-${each.value}"
# }

# resource "ibm_code_engine_project" "code_engine_project_instance" {
#   for_each = data.ibm_resource_group.rg

#   name              = "wap2024-ce-${replace(each.value.name, "/^rg-/", "")}"
#   resource_group_id = data.ibm_resource_group.group.id
# }