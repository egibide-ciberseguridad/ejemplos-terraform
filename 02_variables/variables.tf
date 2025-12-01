// Plantilla de máquina virtual

variable "plantilla" {
  default = "Alpine Linux 3.21"
}

data "opennebula_templates" "busqueda" {
  name_regex = var.plantilla
  #sort_on    = "register_date"
  order      = "ASC" # La más reciente
}
