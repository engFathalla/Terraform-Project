resource "aws_subnet" "public-1-terraform" {
  vpc_id     = aws_vpc.terraform_vpc.id
  availability_zone = var.AZ_1a
  cidr_block = "30.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-1-terraform"
  }
}

resource "aws_subnet" "public-2-terraform" {
  vpc_id     = aws_vpc.terraform_vpc.id
  availability_zone = var.AZ_1b
  cidr_block = "30.0.2.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-2-terraform"
  }
}

resource "aws_subnet" "private-1-terraform" {
  vpc_id     = aws_vpc.terraform_vpc.id
  availability_zone = var.AZ_1a
  cidr_block = "30.0.3.0/24"

  tags = {
    Name = "private-1-terraform"
  }
}

resource "aws_subnet" "private-2-terraform" {
  vpc_id     = aws_vpc.terraform_vpc.id
  availability_zone = var.AZ_1b
  cidr_block = "30.0.4.0/24"

  tags = {
    Name = "private-2-terraform"
  }
}
