variable "custom_domains_lookup" {
  description = <<EOT
Map of custom_domains_lookup, attributes below
Optional:
    - query
EOT

  type = map(object({
    query = optional(string)
  }))
}

