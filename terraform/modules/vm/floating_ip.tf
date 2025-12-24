resource "openstack_networking_floatingip_v2" "fip" {
  for_each = {
    for vm in var.vm_details :
    vm.name => vm
    if vm.floating_ip
  }

  pool    = var.external_network_name
  port_id = openstack_compute_instance_v2.vm[each.key].network[0].port
}
