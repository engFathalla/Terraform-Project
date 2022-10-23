resource "aws_route_table" "Private_RT_Terraform" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-terraform.id
  }

  tags = {
    Name = "Private_RT_Terraform"
  }
}

