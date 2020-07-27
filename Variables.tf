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