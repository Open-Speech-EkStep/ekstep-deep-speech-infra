variable "project" {
description = "The name of the Google Cloud Project."
type = string
}


variable "zone_name" {
description = "The name of the zone."
type = string
default = "us-east1-b"
}

variable "region" {
description = "The name of the region."
type = string
default = "us-east1"
}

variable "speechrecognition_service_account" {
  description = "The name of the speechrecognition_service_account."
  type = string
}

variable "circleci_service_account" {
  description = "The name of the circleci_service_account."
  type = string
}

