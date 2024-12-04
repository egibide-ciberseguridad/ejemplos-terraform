resource "opennebula_virtual_network" "pruebas" {
  name = "ciber-xx-pruebas"
  type = "bridge"
  mtu  = 1500

  network_mask = "255.255.255.0"

  permissions = "640"
  group       = var.opennebula_username
  security_groups = [0]
}

resource "opennebula_virtual_network_address_range" "direcciones" {
  virtual_network_id = opennebula_virtual_network.pruebas.id
  ar_type            = "IP4"
  size               = 50
  ip4                = "10.131.x.1"
}
