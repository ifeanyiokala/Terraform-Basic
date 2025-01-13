
resource "huaweicloud_obs_bucket" "c" {
  bucket     = var.bucket_name
  acl        = "private"
  versioning = true
}



