variable "vultr_api_key" {
}

variable "plan" {
  default = "vc2-2c-4gb"
}

variable "region" {
  default = "lax"
}

variable "os" {
  default = "362"
}

variable "name" {
  default = "Valheim on Vultr"
}

variable "world" {
  default = "default"
}

variable "password" {
}

variable "ssh_key_ids" {
  type = list(string)
}
