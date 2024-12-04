output "instance_name" {
  description = "Nombre de la instancia"
  value       = opennebula_virtual_machine.vm.name
}

output "instance_ip" {
  description = "Dirección IP de la instancia"
  value       = opennebula_virtual_machine.vm.nic[0].computed_ip
}
