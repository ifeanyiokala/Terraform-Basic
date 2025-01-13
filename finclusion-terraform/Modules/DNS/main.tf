
resource "huaweicloud_dns_endpoint" "test" {
  name      = var.endpoint_name
  direction = "inbound"

  ip_addresses {
    subnet_id = var.subnet_id
  }

  ip_addresses {
    subnet_id = var.subnet_id
  }
}

