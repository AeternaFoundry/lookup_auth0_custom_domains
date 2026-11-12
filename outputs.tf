output "custom_domains_lookup_id" {
  description = "Map of id values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.id }
}
output "custom_domains_lookup_custom_domains" {
  description = "Map of custom_domains values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.custom_domains }
}
output "custom_domains_lookup_query" {
  description = "Map of query values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.query }
}

