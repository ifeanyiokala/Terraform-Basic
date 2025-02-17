resource "huaweicloud_networking_secgroup" "secgroup" {
  name        = "secgroup_1"
  description = "My security group"
}

resource "huaweicloud_networking_secgroup_rule" "test" {
  security_group_id = var.security_group_id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8080
  port_range_max    = 8080
  remote_ip_prefix  = "0.0.0.0/0"
}


