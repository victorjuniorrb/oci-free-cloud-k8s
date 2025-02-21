terraform {

  backend "s3" {
    bucket                      = "oke-terraform-states"
    key                         = "infra/terraform.tfstate"
    endpoints = {
      s3                        = "https://idhjgdq0ffvl.compat.objectstorage.us-ashburn-1.oraclecloud.com"
    }
    region                      = "us-ashburn-1"
    shared_credentials_files    = [ "~/.oci/os-terraform-states.key" ]
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
    use_path_style              = true
  }

#  backend "http" {
#     address = "https://idhjgdq0ffvl.objectstorage.us-ashburn-1.oci.customer-oci.com/p/QlfHw374iBtGbmRcVrdKgCo9xvr-F6mu6r_TOfRzks58r1nUgiwtdPxOgcYCyXcX/n/idhjgdq0ffvl/b/terraform-states/o/infra/terraform.tfstate"
#     update_method = "PUT"
#   }

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.23.0"
    }
  }
}