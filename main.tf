module "composer-environment" {
  source = "./modules/gcp-composer"

  project               = var.project
  composer_env_name     = var.composer_env_name
  script_path           = var.script_path
}