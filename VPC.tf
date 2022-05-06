resource "google_compute_network" "vpc_network" {
  project                 = "gcp-final-task-348821"
  name                    = "my-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

