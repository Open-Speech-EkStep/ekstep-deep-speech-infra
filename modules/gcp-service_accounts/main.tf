# Specify the GCP Provider
provider "google" {
  project = var.project
  version = "~> 3.3"
}

data "google_project" "project" {
  project_id = var.project
}

resource "google_service_account" "speechrecognition_service_account" {
  account_id = var.speechrecognition_service_account
  display_name = "speechrecognition Service Account"
}

resource "google_service_account" "circleci_service_account" {
  account_id = var.circleci_service_account
  display_name = "Circleci Service Account"
}

//resource "google_project_iam_member" "circleci_appengine_deployer_binding" {
//  project = var.project
//  role = "roles/appengine.deployer"
//  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
//  depends_on = [
//    google_service_account.circleci_service_account]
//}

resource "google_project_iam_member" "circleci_appengine_appAdmin_binding" {
  project = var.project
  role = "roles/appengine.appAdmin"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}

resource "google_project_iam_member" "circleci_cloudsql_admin_binding" {
  project = var.project
  role = "roles/cloudsql.admin"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}

resource "google_project_iam_member" "circleci_cloudsql_client_binding" {
  project = var.project
  role = "roles/cloudsql.client"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}


resource "google_project_iam_member" "circleci_compute_instanceAdmin_v1_binding" {
  project = var.project
  role = "roles/compute.instanceAdmin.v1"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}

resource "google_project_iam_member" "circleci_storage_objectAdmin_binding" {
  project = var.project
  role = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}

resource "google_project_iam_member" "circleci_storage_objectViewer_binding" {
  project = var.project
  role = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.circleci_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.circleci_service_account]
}


resource "google_project_iam_member" "speechrecognition_appengine_deployer_binding" {
  project = var.project
  role = "roles/appengine.deployer"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_cloudsql_admin_binding" {
  project = var.project
  role = "roles/cloudsql.admin"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_cloudsql_client_binding" {
  project = var.project
  role = "roles/cloudsql.client"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_cloudsql_editor_binding" {
  project = var.project
  role = "roles/cloudsql.editor"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_composer_user_binding" {
  project = var.project
  role = "roles/composer.user"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_composer_worker_binding" {
  project = var.project
  role = "roles/composer.worker"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}


resource "google_project_iam_member" "speechrecognition_container_clusterViewer_binding" {
  project = var.project
  role = "roles/container.clusterViewer"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_containerregistry_ServiceAgent_binding" {
  project = var.project
  role = "roles/containerregistry.ServiceAgent"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_iam_serviceAccountTokenCreator_binding" {
  project = var.project
  role = "roles/iam.serviceAccountTokenCreator"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_iam_serviceAccountUser_binding" {
  project = var.project
  role = "roles/iam.serviceAccountUser"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}

resource "google_project_iam_member" "speechrecognition_storage_objectAdmin_binding" {
  project = var.project
  role = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.speechrecognition_service_account.account_id}@${var.project}.iam.gserviceaccount.com"
  depends_on = [
    google_service_account.speechrecognition_service_account]
}
