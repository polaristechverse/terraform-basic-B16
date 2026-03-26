resource "aws_subnet" "DemoBasicSubnet-1" {
  vpc_id                  = aws_vpc.DemoBasicVPC.id
  cidr_block              = var.Public_Subnet_1_Cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.Subnet_1_Name
  }
}

resource "aws_subnet" "DemoBasicSubnet-2" {
  vpc_id                  = aws_vpc.DemoBasicVPC.id
  cidr_block              = var.Public_Subnet_2_Cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.Subnet_2_Name
  }
}