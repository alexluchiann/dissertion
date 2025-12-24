output "vm_ips" {
    description = "Vm's private ip's"
    value = {
        for name, vm in openstack_compute_instance_v2.vm :
        name => vm.access_ip_v4
    }
}

output "vm_cp_ip" {
  value = openstack_compute_instance_v2.vm["control-plane"].access_ip_v4
}

output "vm_bastion_ip" {
  value = openstack_compute_instance_v2.vm["bastion"].access_ip_v4
}

output "floating_ips" {
  value = {
    for name, fip in openstack_networking_floatingip_v2.fip :
    name => fip.address
  }
}