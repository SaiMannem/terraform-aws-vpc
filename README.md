
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
## Inputs

<div align="right">
  <div style="overflow-x: auto;">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Type</th>
          <th>Default</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>common_tags</td>
          <td>object</td>
          <td><code>{ managedBy = "youDidNotSpecify", owner = "youDidNotSpecify", environment = "youDidNotSpecify" }</code></td>
          <td>Common tags applied to all resources</td>
        </tr>
        <tr>
          <td>vpc_config</td>
          <td>map(object)</td>
          <td><code>{ "youDidNotSpecify" = { cidr_block = "10.0.0.0/16", instance_tenancy = "default", enable_dns_support = true, enable_dns_hostnames = true } }</code></td>
          <td>Map of VPC configurations</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>


