resource "opennebula_virtual_machine" "vm" {

  template_id = data.opennebula_template.plantilla.id

  name = "alpine-${var.opennebula_username}-terraform"

  cpu    = 0.25
  vcpu   = 2
  memory = 128
  group  = var.opennebula_username

  context = {
    NETWORK      = "YES"
    SET_HOSTNAME = "$NAME"
  }

  nic {
    model      = "virtio"
    network_id = data.opennebula_virtual_network.red.id
  }

  disk {
    image_id = data.opennebula_template.plantilla.disk[0].image_id
    target   = "vda"
    size     = 256
  }
}
