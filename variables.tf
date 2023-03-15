variable "location" {
  type    = string
  default = "North Europe"
}

variable "vm_size" {
  type    = string
  default = "Standard_D2_v2"
}

variable "wn_user_name" {
  type    = string
  default = ""
}

variable "wn_user_password" {
  type      = string
  default   = ""
  sensitive = true
}

variable "opn_user_name" {
  type    = string
  default = ""
}

variable "opn_user_password" {
  type      = string
  default   = ""
  sensitive = true
}