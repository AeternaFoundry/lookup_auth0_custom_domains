output "custom_domains_lookup_id" {
  description = "Map of id values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_domains_lookup_custom_domains" {
  description = "Map of custom_domains values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup except keys with no custom_domains are omitted"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.custom_domains if v.custom_domains != null && length(v.custom_domains) > 0 }
}
output "custom_domains_lookup_query" {
  description = "Map of query values across all custom_domains_lookup, keyed the same as var.custom_domains_lookup except keys with no query are omitted"
  value       = { for k, v in data.auth0_custom_domains.custom_domains_lookup : k => v.query if v.query != null && length(v.query) > 0 }
}

