terraform {
  required_version = ">= 1.6.0"
  
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = ">= 1.52.0"
    }
  }
}


provider "openstack" {
  auth_url                      = var.os_auth_url
  region                        = var.os_region
  application_credential_id     = var.os_app_cred_id
  application_credential_secret = var.os_app_cred_secret
}

resource "openstack_compute_instance_v2" "test_vm" {
  name            = var.vm_name
  image_id      = var.image_id
  flavor_name     = var.flavor_name
  key_pair        = "dizertie"
}
