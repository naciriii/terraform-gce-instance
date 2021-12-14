resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
  allow_stopping_for_update = true

  metadata = {

    ssh-keys = join("\n", [for ssh_key in var.ssh_keys : "${ssh_key.user}:${ssh_key.key}"])
  }
  metadata_startup_script = data.template_file.init.rendered

}

data "template_file" "init" {
  template = file("${path.module}/scripts/init.tpl")
  vars = {

  }
}

