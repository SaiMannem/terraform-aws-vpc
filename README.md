
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
    owner       = "SaiMannem"
    environment = "development"
  }

  vpcs = {
    thisIsYourVpcName001 = {
      cidr_block           = "10.0.0.0/16"
      instance_tenancy     = "default"
      enable_dns_support   = true
      enable_dns_hostnames = true
    }

    thisIsYourVpcName002 = {
      cidr_block           = "10.1.0.0/16"
      instance_tenancy     = "default"
      enable_dns_support   = true
      enable_dns_hostnames = false
    }
  }
}
```
### Inputs

| Name        | Type        | Default                                                                                                                                                      | Description                          |
|-------------|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| common_tags | object      | `{ managedBy = "youDidNotSpecify", owner = "youDidNotSpecify", environment = "youDidNotSpecify" }`                                                           | Common tags applied to all resources |
| vpc_config  | map(object) | `{ "youDidNotSpecify" = { cidr_block = "10.0.0.0/16", instance_tenancy = "default", enable_dns_support = true, enable_dns_hostnames = true } }`              | Map of VPC configurations            |

### Outputs

| Name                       | Description                              |
|----------------------------|------------------------------------------|
| vpc_id                     | resource ID of the VPC                   |
| vpc_arn                    | ARN of the VPC                           |
| cidr_block                 | CIDR block of the VPC                    |
| default_security_group_id  | Default security group ID of the VPC     |
| default_network_acl_id     | Default network ACL ID of the VPC        |
| default_route_table_id     | Default route table ID of the VPC        |
