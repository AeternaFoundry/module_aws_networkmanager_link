variable "networkmanager_links" {
  description = <<EOT
Map of networkmanager_links, attributes below
Required:
    - global_network_id
    - site_id
    - bandwidth (block):
        - download_speed (optional)
        - upload_speed (optional)
Optional:
    - description
    - provider_name
    - tags
    - tags_all
    - type
EOT

  type = map(object({
    global_network_id = string
    site_id           = string
    description       = optional(string)
    provider_name     = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    type              = optional(string)
    bandwidth = object({
      download_speed = optional(number)
      upload_speed   = optional(number)
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

