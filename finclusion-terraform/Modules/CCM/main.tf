resource "huaweicloud_ccm_certificate" "test" {
  cert_brand     = var.cert_brand
  cert_type      = var.cert_type
  domain_type    = "SINGLE_DOMAIN"
  effective_time = 1
  domain_numbers = 1
}