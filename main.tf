resource "aws_networkmanager_link" "networkmanager_links" {
  for_each = var.networkmanager_links

  global_network_id = each.value.global_network_id
  site_id           = each.value.site_id
  description       = each.value.description
  provider_name     = each.value.provider_name
  tags              = each.value.tags
  tags_all          = each.value.tags_all
  type              = each.value.type

  bandwidth {
    download_speed = each.value.bandwidth.download_speed
    upload_speed   = each.value.bandwidth.upload_speed
  }
}

