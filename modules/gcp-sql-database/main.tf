# Specify the GCP Provider
provider "google" {
  project = var.project
  version = "~> 3.3"
}

resource "google_sql_database" "database1" {
  name     = var.database1
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database" "database2" {
  name     = var.database2
  instance = google_sql_database_instance.instance.name
}


resource "google_sql_database_instance" "instance" {
  name   = var.database_instance_name
  region = var.db_region
  database_version = var.database_version
  settings {
    tier = var.sql_instance_size

    disk_type = var.sql_disk_type
    disk_size = var.sql_disk_size
    disk_autoresize = true
  }
  deletion_protection  = "true"
}

