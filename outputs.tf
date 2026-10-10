output "iam_group_policy_attachments_id" {
  description = "Map of id values across all iam_group_policy_attachments, keyed the same as var.iam_group_policy_attachments"
  value       = { for k, v in aws_iam_group_policy_attachment.iam_group_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_group_policy_attachments_group" {
  description = "Map of group values across all iam_group_policy_attachments, keyed the same as var.iam_group_policy_attachments"
  value       = { for k, v in aws_iam_group_policy_attachment.iam_group_policy_attachments : k => v.group if v.group != null && length(v.group) > 0 }
}
output "iam_group_policy_attachments_policy_arn" {
  description = "Map of policy_arn values across all iam_group_policy_attachments, keyed the same as var.iam_group_policy_attachments"
  value       = { for k, v in aws_iam_group_policy_attachment.iam_group_policy_attachments : k => v.policy_arn if v.policy_arn != null && length(v.policy_arn) > 0 }
}

