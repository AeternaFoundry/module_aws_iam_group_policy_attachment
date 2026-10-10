variable "iam_group_policy_attachments" {
  description = <<EOT
Map of iam_group_policy_attachments, attributes below
Required:
    - group
    - policy_arn
EOT

  type = map(object({
    group      = string
    policy_arn = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

