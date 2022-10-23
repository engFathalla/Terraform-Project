resource "aws_db_instance" "MySQL" {
  
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "fathalla"
  password             = "fathalla123"
  db_subnet_group_name = aws_db_subnet_group.db_pvt_group.name
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "db_pvt_group" {
  name       = "main"
  subnet_ids = ["${var.private_sub_1}", "${var.private_sub_2}","${var.public_sub_1}"]

  tags = {
    Name = "My DB subnet group"
  }
}
