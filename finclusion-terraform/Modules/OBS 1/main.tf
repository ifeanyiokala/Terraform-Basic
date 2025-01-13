
resource "huaweicloud_obs_bucket" "b" {
  bucket = var.bucket_name2
  acl    = "private"

  tags = {
    foo = "bar"
    Env = "Test"
  }
}

