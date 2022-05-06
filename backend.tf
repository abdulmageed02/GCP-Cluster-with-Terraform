# resource "google_storage_bucket" "remote-state-bucket" {
  # name          = "finaltask-statfile"
  # location      = "ASIA-SOUTHEAST1"

  # versioning {
  #     enabled = true
  # }
  # }
  provider "google" {
  project     = "gcp-final-task-348821"
  region      = "asia-southeast1"
}
terraform {
  backend "gcs" {
    bucket  = "my-state-file"
    prefix  = "terraform/state"
  }
}
