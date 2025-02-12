variable "compartment_id" {
  type        = string
  description = "The compartment to create the resources in"
}

variable "region" {
  description = "OCI region"
  type        = string

  default = "us-ashburn-1"
}

variable "ssh_public_key" {
  description = "SSH Public Key used to access all instances"
  type        = string

  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKd8Mo4+nPpwz+cteNY+Crj5r2W3EpRxHtYWxRsazAb0 victorjuniorrb-oci"
}

variable "kubernetes_version" {
  # https://docs.oracle.com/en-us/iaas/Content/ContEng/Concepts/contengaboutk8sversions.htm
  description = "Version of Kubernetes"
  type        = string

  default = "v1.31.1"
}

variable "kubernetes_worker_nodes" {
  description = "Worker node count"
  type        = number

  default = 2
}

# TODO: search for latest image
variable "image_id" {
  # https://docs.oracle.com/en-us/iaas/images/oke-worker-node-oracle-linux-8x/
  description = "OCID of the latest oracle linux"
  type        = string

  # Oracle-Linux-8.10-aarch64-2024.09.30-0-OKE-1.31.1-747
  default = "ocid1.image.oc1.iad.aaaaaaaainz5mpviqajnrzj3dnaw4j6uxbvxv2ree4syrg5cf4647qhatdlq"
}

variable "victor_domain_name" {
  description = "Main DNS Zone"
  type        = string

  default = "oci.infra.ufg.br"
}

variable "cett_domain_name" {
  description = "DNS Zone"
  type        = string

  default = "oci.cett.dev.br"
}
