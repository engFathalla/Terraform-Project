
resource "aws_internet_gateway" "igw-terraform" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "main-igw-terraform"
  }
}