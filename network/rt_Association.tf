resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-1-terraform.id
  route_table_id = aws_route_table.Public_RT_Terraform.id
}

resource "aws_route_table_association" "b" {
  
  subnet_id      = aws_subnet.public-2-terraform.id 
  route_table_id = aws_route_table.Public_RT_Terraform.id
}



resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.private-1-terraform.id 
  route_table_id = aws_route_table.Private_RT_Terraform.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private-2-terraform.id 
  route_table_id = aws_route_table.Private_RT_Terraform.id
}