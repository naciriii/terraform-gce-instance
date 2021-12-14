module "gcp_vm" {
  source   = "./gcp_vm"
  name     = "difference-vm"
  type     = var.type
  ssh_keys = var.ssh_keys

}