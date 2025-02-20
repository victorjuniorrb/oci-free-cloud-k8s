module "externalsecrets" {
  source = "./modules/external-secrets"

  compartment_id = var.compartment_id
  tenancy_id     = var.tenancy_id
  vault_id       = var.vault_id
  region         = var.region

  depends_on = [
    module.fluxcd
  ]
}

module "fluxcd" {
  source = "./modules/fluxcd"

  gh_token = var.gh_token
}

module "ingress" {
  source = "./modules/nginx-ingress"

  compartment_id = var.compartment_id
}

module "externaldns" {
  source = "./modules/external-dns"

  # compartment_id = var.compartment_id
  compartment_id = var.tenancy_id
}

# module "homelab" {
#   source = "./modules/homelab"

#   group_id       = module.externaldns.dns_group_id
#   compartment_id = var.compartment_id
# }

module "grafana" {
  source = "./modules/grafana"

  # compartment_id = var.compartment_id
  compartment_id = var.tenancy_id
}
