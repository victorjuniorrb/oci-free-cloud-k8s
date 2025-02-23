# https://github.com/oracle/oci-grafana-metrics/blob/master/docs/kubernetes.md

resource "oci_identity_dynamic_group" "grafana_instances" {
  #Required
  compartment_id = var.compartment_id
  description    = "Grafana Monitoring"
  name           = "grafana"

  # all instances
  matching_rule = "All {instance.id = '*'}"
}

resource "oci_identity_policy" "grafana" {
  #Required
  compartment_id = var.compartment_id
  description    = "allow metrics"
  name           = "Monitoring"
  statements = [
    "Allow dynamic-group 'Default'/'grafana' to read metrics in tenancy",
    "Allow dynamic-group 'Default'/'grafana' to read compartments in tenancy"
  ]
}
