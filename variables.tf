#object typed is best datatype if we create the single object
variable "common_tags" {
  type = object({
    managedBy   = string
    owner       = string
    environment = string
  })
  default = {
    managedBy   = "youDidNotSpecify"
    owner       = "youDidNotSpecify"
    environment = "youDidNotSpecify"
  }
}

variable "vpc_config" {
  type = object({
    name                 = string
    create_vpc           = bool
    cidr_block           = string
    instance_tenancy     = string
    enable_dns_support   = bool
    enable_dns_hostnames = bool
  })
  default = {
    name                 = "youDidNotSpecify"
    create_vpc           = true
    cidr_block           = "10.0.0.0/16"
    instance_tenancy     = "default"
    enable_dns_support   = true
    enable_dns_hostnames = true
  }
}