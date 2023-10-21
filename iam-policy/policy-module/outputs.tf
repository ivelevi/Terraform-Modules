output "policy_arn" {
  description = "The IAM policy ARN"
  value       = aws_iam_policy.policy.arn
}

output "policy_id" {
  description = "The IAM policy ID"
  value       = aws_iam_policy.policy.id
}

output "policy_name" {
  description = "The IAM policy name"
  value       = aws_iam_policy.policy.name
}
