output "huaweicloud_obs_bucket"  {
  value       = huaweicloud_obs_bucket.c.id
  description = "The ID of the created bucket"
}

output "bucketname" {
  value = huaweicloud_obs_bucket.c.bucket_domain_name
  description = "value"
}


