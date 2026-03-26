resource "aws_vpc" "DemoBasicVPC" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_internet_gateway" "DemoBasicIGW" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  tags = {
    "Name" = var.IGW_Name
  }
}