resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "production-public-subnet"
    Environment = "production"
    ManagedBy   = "terraform"
    Type        = "public"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-north-1a"

  tags = {
    Name        = "production-private-subnet"
    Environment = "production"
    ManagedBy   = "terraform"
    Type        = "private"
  }
}
