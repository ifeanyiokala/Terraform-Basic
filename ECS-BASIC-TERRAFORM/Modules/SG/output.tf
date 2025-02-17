output "secgroup_id" {
  value       = huaweicloud_networking_secgroup.secgroup.id
  description = "The ID of the created secgroup"
}

output "secgroup_rule_id" {
  value       = huaweicloud_networking_secgroup_rule.test.id
  description = "The ID of the created ECS"
}