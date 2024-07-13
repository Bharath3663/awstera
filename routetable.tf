resource "aws_route_table" "root" {
  vpc_id = aws_vpc.NEW.id
  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id = var.public_subnet_id
  route_table_id = aws_route_table.root.id
}

resource "aws_route_table_association" "internet_gateway_association" {
  gateway_id = var.internet_gateway_id
  route_table_id = aws_route_table.root.id
}
