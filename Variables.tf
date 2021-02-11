variable "project" {
  description = "The name of the Google Cloud Project."
  default = "ekstepspeechrecognition"
}

variable "composer_env_name" {
  description = "The name of the Google composer_env_name."
  default = "ekstepcomposer"
}

variable "script_path" {
  description = "The path of the working dir."
  default = "./modules/gcp-composer/"
}

variable "bucket_name" {
  description = "The name of the gcp bucket"
  default = "ekstepspeechrecognition"
}


variable "database_version" {
  description = "The name of the database_version."
  type = string
  default = "POSTGRES_11"
}

variable "database_instance_name" {
  description = "The name of the database_instance."
  type = string
  default = "crowdsourcedb"
}

variable "db_region" {
  description = "The name of the db region."
  type = string
  default = "us-central1"
}

variable "database1" {
  description = "The name of the database1."
  type = string
  default = "crowdsource"
}

variable "database2" {
  description = "The name of the database2."
  type = string
  default = "speech_recognition_data_catalog"
}

variable "speechrecognition_service_account" {
  description = "The name of the speechrecognition_service_account."
  type = string
  default = "servacct-speechrecognitioncom"
}

variable "circleci_service_account" {
  description = "The name of the circleci_service_account."
  type = string
  default = "servacct-circleci"
}

variable "sql_instance_size" {
  default = "db-custom-8-30720"
  type = string
  description = "Size of Cloud SQL instances"
}

variable "sql_disk_type" {
  default = "PD_HDD"
  type = string
  description = "Cloud SQL instance disk type"
}

variable "sql_disk_size" {
  default = "100"
  type = string
  description = "Storage size in GB"
}
