locals {
  common_tags = {
    managedBy   = var.common_tags.managedBy
    owner       = var.common_tags.owner
    environment = var.common_tags.environment
  }
}

#This Module will Only creates single vpc at once
resource "aws_vpc" "this" {
  count = var.vpc_config.create_vpc ? 1 : 0

  cidr_block       = var.vpc_config.cidr_block
  instance_tenancy = var.vpc_config.instance_tenancy

  enable_dns_support   = var.vpc_config.enable_dns_support
  enable_dns_hostnames = var.vpc_config.enable_dns_hostnames

  tags = merge(local.common_tags, {
    Name = var.vpc_config.name
  })

}