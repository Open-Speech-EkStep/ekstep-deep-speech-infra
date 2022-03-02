provider "google" {
  project = var.project
  version = "~> 3.3"
}


resource "google_composer_environment" "composer" {
  name   = "${var.composer_env_name}"
  region = var.region
  config {
    node_count = 3

    node_config {
      zone         = var.zone_name
      machine_type = "n2-standard-4"
      disk_size_gb = "100"
    }
    software_config {
      airflow_config_overrides = {
        core-load_example = "True"
        core-dag_concurrency = "150"
        core-parallelism = "150"
        core-max_active_runs_per_dag = "1"
        celery-worker_concurrency = "15"
      }
      image_version= "composer-1.18.1-airflow-1.10.15"

      pypi_packages = {
        google-cloud-storage = "==1.32"
        gs-wrap = ""
        xlsxwriter = ""
        google-cloud-core = "==1.4.1"
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
