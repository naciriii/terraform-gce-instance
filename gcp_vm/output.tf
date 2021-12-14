
output "vm-id" {
  value       = google_compute_instance.vm_instance.id
  description = "VM Id"
}
output "vm-ip" {
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
  description = "VM public IP"
}
output "vm-os" {
  value = google_compute_instance.vm_instance.boot_disk[0].initialize_params[0].image
}
output "vm-type" {
  value = google_compute_instance.vm_instance.machine_type
}