output "security_group_id" {
  description = "ID of the security group."
  value       = aws_security_group.security_group.id
}
output "security_group_arn" {
  description = "ARN of the security group."
  value       = aws_security_group.security_group.arn

}
