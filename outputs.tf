output "networkmanager_links_id" {
  description = "Map of id values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_links_arn" {
  description = "Map of arn values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "networkmanager_links_bandwidth" {
  description = "Map of bandwidth values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => one(v.bandwidth) if v.bandwidth != null && length(v.bandwidth) > 0 }
}
output "networkmanager_links_description" {
  description = "Map of description values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.description if v.description != null && length(v.description) > 0 }
}
output "networkmanager_links_global_network_id" {
  description = "Map of global_network_id values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.global_network_id if v.global_network_id != null && length(v.global_network_id) > 0 }
}
output "networkmanager_links_provider_name" {
  description = "Map of provider_name values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.provider_name if v.provider_name != null && length(v.provider_name) > 0 }
}
output "networkmanager_links_site_id" {
  description = "Map of site_id values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.site_id if v.site_id != null && length(v.site_id) > 0 }
}
output "networkmanager_links_tags" {
  description = "Map of tags values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networkmanager_links_tags_all" {
  description = "Map of tags_all values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "networkmanager_links_type" {
  description = "Map of type values across all networkmanager_links, keyed the same as var.networkmanager_links"
  value       = { for k, v in aws_networkmanager_link.networkmanager_links : k => v.type if v.type != null && length(v.type) > 0 }
}

