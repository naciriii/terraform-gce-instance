terraform {
  backend "gcs" {
    bucket      = "terraform-different-state"
    prefix      = "terraform/state"
    credentials = "credentials/creds.json"
  }
}