provider "google" {
  project = var.project
  version = "~> 3.3"
}


resource "google_composer_environment" "composer" {
  name   = var.composer_env_name
  region = "us-east1"
  config {
    node_count = 3

    node_config {
      zone         = "us-east1-b"
      machine_type = "n1-standard-1"
      disk_size_gb = "20"
    }
    software_config {
      airflow_config_overrides = {
        core-load_example = "True"
      }

      pypi_packages = {
        google-cloud-storage = "==1.17"
        gs-wrap = ""
      }
      python_version = 3
    }

  }

  provisioner "local-exec" {
    working_dir = var.script_path
    command = "${var.patch_script}"
  }

  #   depends_on = [google_project_iam_member.composer-worker]
}