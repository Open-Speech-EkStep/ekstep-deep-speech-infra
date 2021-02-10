module "composer-environment" {
  source = "./modules/gcp-composer"

  project = var.project
  composer_env_name = var.composer_env_name
  script_path = var.script_path
}

module "bucket" {
  source = "./modules/gcp-bucket"

  project = var.project
  bucket_name = var.bucket_name
}

module "service-accounts" {
  source = "./modules/gcp-service_accounts"
  project = var.project
  speechrecognition_service_account = var.speechrecognition_service_account
  circleci_service_account = var.circleci_service_account
}

module "sql-database" {
  source = "./modules/gcp-sql-database"
  project = var.project
  database_version = var.database_version
  database_instance_name = var.database_instance_name
  db_region = var.db_region
  database1 = var.database1
  database2 = var.database2
  sql_instance_size = var.sql_instance_size
  sql_disk_type = var.sql_disk_type
  sql_disk_size = var.sql_disk_size

}
