resource "aws_nat_gateway" "nat-terraform" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public-1-terraform.id

  tags = {
    Name = "gw NAT-terraform"
  }

  depends_on = [aws_internet_gateway.igw-terraform]
}