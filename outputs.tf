output "vpc_id" {
  description = "ID of the vpc"
  #try, terraform built in fuction which does not throw an error if the resource not found or exists
  value = try(aws_vpc.this[0].id, null)
}

output "vpc_arn" {
  description = "ARN of the VPC"
  value       = try(aws_vpc.this[0].id, null)
}

output "cidr_block" {
  description = "CIDR block of the VPC"
  value       = try(aws_vpc.this[0].cidr_block, null)
}

output "default_security_group_id" {
  description = "default_security_group_id of the vpc"
  value       = try(aws_vpc.this[0].default_security_group_id, null)
}

output "default_network_acl_id" {
  description = "default network acl ID of the VPC"
  value       = try(aws_vpc.this[0].default_network_acl_id, null)
}

output "default_route_table_id" {
  description = "default route table id of the vpc"
  value       = try(aws_vpc.this[0].default_route_table_id, null)
}