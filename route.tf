resource "aws_route_table" "DemoBasicPublicRTB" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  tags = {
    "Name" = var.publicRoute_Name
  }
  route {
    gateway_id = aws_internet_gateway.DemoBasicIGW.id
    cidr_block = "0.0.0.0/0"
  }
}

resource "aws_route_table_association" "DemoBasicRouteAssociation-1" {
  route_table_id = aws_route_table.DemoBasicPublicRTB.id
  subnet_id      = aws_subnet.DemoBasicSubnet-1.id
}

resource "aws_route_table_association" "DemoBasicRouteAssociation-2" {
  route_table_id = aws_route_table.DemoBasicPublicRTB.id
  subnet_id      = aws_subnet.DemoBasicSubnet-2.id
}