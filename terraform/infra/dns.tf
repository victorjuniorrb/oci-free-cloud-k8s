# resource "oci_dns_zone" "victor_zone" {
#   compartment_id = var.compartment_id
#   name           = var.victor_domain_name
#   zone_type      = "PRIMARY"
# }

resource "oci_dns_zone" "cett_zone" {
  compartment_id = var.compartment_id
  name           = var.cett_domain_name
  zone_type      = "PRIMARY"
}
