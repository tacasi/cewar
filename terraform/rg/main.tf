terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

resource "ibm_resource_group" "resourceGroup" {
  for_each = toset(var.user_list)
  name     = "rg-${each.value}"
}

