variable "gh_token" {
  sensitive = true
  type      = string
}

variable "gh_org" {
  type = string

  default = "victorjuniorrb"
}

variable "gh_repository" {
  type = string

  default = "oci-free-cloud-k8s"
}
