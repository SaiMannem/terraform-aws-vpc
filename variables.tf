#object typed is best datatype if we create the single object
variable "vpc_config" {
  type = map(object({
    cidr_block           = string
    instance_tenancy     = string
    enable_dns_support   = bool
    enable_dns_hostnames = bool
  }))

  default = {
    "youDidNotSpecify" = {
      cidr_block           = "10.0.0.0/16"
      instance_tenancy     = "default"
      enable_dns_support   = true
      enable_dns_hostnames = true
    }
  }
}