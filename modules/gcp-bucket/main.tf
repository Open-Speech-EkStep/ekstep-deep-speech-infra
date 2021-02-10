# Specify the GCP Provider
provider "google" {
  project = var.project
  version = "~> 3.3"
}

# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
name     = "${var.bucket_name}-${terraform.workspace}"
location = var.region
}
