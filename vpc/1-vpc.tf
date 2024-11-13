# This is regular VPC

resource "aws_vpc" "this" {
  cidr_block = var.vpc_cird_block

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.env}-main"
  }
}