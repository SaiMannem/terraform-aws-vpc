locals {
  common_tags = {
    managedBy   = var.common_tags.managedBy
    owner       = var.common_tags.owner
    environment = var.common_tags.environment
  }
}

resource "aws_vpc" "this" {
  for_each             = var.vpc_config
  cidr_block           = each.value.cidr_block
  instance_tenancy     = each.value.instance_tenancy
  enable_dns_support   = each.value.enable_dns_support
  enable_dns_hostnames = each.value.enable_dns_hostnames

  tags = merge(local.common_tags, {
    Name = each.key
  })
}