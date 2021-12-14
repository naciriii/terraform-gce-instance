variable "name" {
  type        = string
  default     = "GCE-VM"
  description = "Vm name"
}
variable "image" {
  type        = string
  default     = "debian-cloud/debian-9"
  description = "Image used for OS in VM"
}
variable "type" {
  type        = string
  default     = "f1-micro"
  description = "Type of VM"
}
variable "ssh_keys" {
  type = list(object({
    user = string
    key  = string
  }))

}



