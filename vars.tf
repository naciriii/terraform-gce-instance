variable "project_name" {
  type        = string
  default     = ""
  description = "GCP Project Name"
}
variable "region" {
  type        = string
  default     = "us-central1"
  description = "Region"
}
variable "zone" {
  type        = string
  default     = "us-central1-c"
  description = "Zone"
}
variable "type" {
  type        = string
  default     = "e2-small"
  description = "VM type"
}
variable "ssh_keys" {
  type = list(object({
    user = string
    key  = string
  }))

}



