data "auth0_custom_domains" "custom_domains_lookup" {
  for_each = var.custom_domains_lookup

  query = each.value.query
}

