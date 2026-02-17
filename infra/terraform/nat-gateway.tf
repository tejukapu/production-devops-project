resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name        = "production-nat-eip"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name        = "production-nat-gateway"
    Environment = "production"
    ManagedBy   = "terraform"
  }

  depends_on = [aws_internet_gateway.igw]
}
