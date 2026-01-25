output "vpc_id" {
  description = "ID of the vpc"
  value       = { for key, value in aws_vpc.this : key => value.id }
}

output "vpc_arn" {
  description = "ARN of the VPC"
  value       = { for key, value in aws_vpc.this : key => value.arn }
}

output "cidr_block" {
  description = "CIDR block of the VPC"
  value       = { for key, value in aws_vpc.this : key => value.cidr_block }
}

output "default_security_group_id" {
  description = "default_security_group_id of the vpc"
  value       = { for key, value in aws_vpc.this : key => value.default_security_group_id }
}

output "default_network_acl_id" {
  description = "default network acl ID of the VPC"
  value       = { for key, value in aws_vpc.this : key => value.default_network_acl_id }
}

output "default_route_table_id" {
  description = "default route table id of the vpc"
  value       = { for key, value in aws_vpc.this : key => value.default_route_table_id }
}