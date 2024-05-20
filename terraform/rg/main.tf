terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

resource "ibm_resource_group" "resourceGroup" {
  name     = "mytest"
}