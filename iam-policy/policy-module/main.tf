locals {
  policy_name   = var.policy_name == "" ? null : var.policy_name
  policy_prefix = var.policy_name == "" ? var.policy_prefix : null
}

resource "aws_iam_policy" "policy" {
  name        = local.policy_name
  name_prefix = local.policy_prefix
  description = var.policy_description
  policy      = var.policy_document
  path        = var.policy_path

  lifecycle {
    create_before_destroy = true #This is recommended
  }
}
