
output "vm-id" {
  value       = module.gcp_vm.vm-id
  description = "VM Id"
}
output "vm-ip" {
  value       = module.gcp_vm.vm-ip
  description = "VM public IP"
}
output "vm-os" {
  value = module.gcp_vm.vm-os
}
output "vm-type" {
  value = module.gcp_vm.vm-type
}