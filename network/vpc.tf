resource "aws_vpc" "terraform_vpc" {
  cidr_block = "30.0.0.0/16"
  tags = {
    Name = "terraform_vpc"
  }
  
}


