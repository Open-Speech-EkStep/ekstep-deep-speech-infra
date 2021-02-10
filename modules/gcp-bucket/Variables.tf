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

variable "bucket_name" {
  description = "The name of the gcp bucket"
  type = string
}

