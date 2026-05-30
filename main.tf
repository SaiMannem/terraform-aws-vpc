
resource "aws_vpc" "this" {
  for_each             = var.vpc_config
  
  cidr_block           = each.value.cidr_block
  instance_tenancy     = each.value.instance_tenancy
  enable_dns_support   = each.value.enable_dns_support
  enable_dns_hostnames = each.value.enable_dns_hostnames

  tags =  {
    Name = each.key
  }
}