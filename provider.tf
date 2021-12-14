provider "google" {
  credentials = file("credentials/creds.json")
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}