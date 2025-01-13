resource "huaweicloud_cdn_domain" "test" {
  name         = var.domain_name
  type         = "web"
  service_area = "outside_mainland_china"

  sources {
    origin      = var.origin_server
    origin_type = "obs_bucket"
    active      = 1
  }
}