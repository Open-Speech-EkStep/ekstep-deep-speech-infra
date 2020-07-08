variable "project" {
description = "The name of the Google Cloud Project."
type = string
}

variable "composer_env_name" {
description = "The name of the Google composer_env_name."
type = string
}

variable "patch_script" {
description = "The path of the script."
type = string
default = "./patch.sh"
}

variable "script_path" {
description = "The name of the script."
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