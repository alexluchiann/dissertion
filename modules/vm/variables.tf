variable "network_id" {
  type = string
}

variable "external_network_name" {
  type = string
}

variable "vm_details" {
  description = "Vm specifications"
  type = list(object({
    name            = string
    image_id        = string
    flavor_name     = string
    key_pair        = string
    security_groups = list(string)
    floating_ip     = bool
  }))
}
