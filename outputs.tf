output "vpc_id" {
  description = "vpc_id value on SSM Parameter"
  value       = aws_ssm_parameter.vpc.id
}

output "public_subnets" {
  description = "public subnets ids on SSM Parameters"
  value       = aws_ssm_parameter.public_subnets[*].id
}

output "private_subnets" {
  description = "private subnets ids on SSM Parameters"
  value       = aws_ssm_parameter.private_subnets[*].id
}

output "database_subnets" {
  description = "database subnets ids on SSM Parameters"
  value       = aws_ssm_parameter.databases_subnets[*].id
}