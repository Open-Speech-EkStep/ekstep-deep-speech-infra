variable "project" {
description = "The name of the Google Cloud Project."
type = string
}


variable "database_version" {
description = "The name of the database_version."
type = string
}

variable "database_instance_name" {
description = "The name of the database_instance."
type = string
}

variable "sql_instance_size" {
  description = "Size of Cloud SQL instances"
  type = string
}

variable "sql_disk_type" {
  description = "Cloud SQL instance disk type"
  type = string
}

variable "sql_disk_size" {
  description = "Storage size in GB"
  type = string
}
variable "db_region" {
description = "The name of the db region."
type = string
}

variable "database1" {
description = "The name of the database1."
type = string
}

variable "database2" {
description = "The name of the database2."
type = string
}
