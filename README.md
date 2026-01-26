
# VPC Module

## Overview 
This Terraform module provisions multiple AWS VPCs using a single configuration.
The VPCs are defined via a map of objects, allowing flexible customization for each VPC.

### Usage
```hcl
module "vpc" {
  source = "./modules/vpc"

  vpcs = {
    vpc1 = {
      cidr_block           = "10.0.0.0/16"
      enable_dns_support   = true
      enable_dns_hostnames = true
      tags = {
        Name = "vpc-1"
        Env  = "dev"
      }
    }

    vpc2 = {
      cidr_block           = "10.1.0.0/16"
      enable_dns_support   = true
      enable_dns_hostnames = false
      tags = {
        Name = "vpc-2"
        Env  = "prod"
      }
    }
  }
}