variable "cidr_blocks" {}

variable "aws_account_id" {}

variable "organization" {}

variable "region" {}

data "aws_availability_zones" "available" {}

locals {
  common_tags = {
    Versao  = 12
    Terraform    = "true"
    Organization = "${var.organization}"
  }

  termination_policies = [
    "OldestLaunchConfiguration",
    "OldestInstance",
  ]
}
