
# VPC Module

## Overview 
This Terraform module provisions multiple AWS VPCs using a single configuration.
The VPCs are defined via a map of objects, allowing flexible customization for each VPC.

### Usage
```hcl
module "vpc" {
  source = "git::https://github.com/SaiMannem/terraform-aws-vpc.git//modules/vpc?ref=main"

  common_tags = {
    managedBy   = "Terraform"
    owner       = "Sai_Mannem"
    environment = "development"
  }

  vpcs = {
    thisIsYourVpcName001 = {
      cidr_block           = "10.0.0.0/16"
      enable_dns_support   = true
      enable_dns_hostnames = true
    }

    thisIsYourVpcName002 = {
      cidr_block           = "10.1.0.0/16"
      enable_dns_support   = true
      enable_dns_hostnames = false
    }
  }
}