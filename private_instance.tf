resource "aws_instance" "Application" {
  ami                         = var.ami
  instance_type               = "t2.micro"
  subnet_id                   = module.network.pvt_sub_1_id
  vpc_security_group_ids      = [aws_security_group.Allow_SSH_3000_private.id]
  key_name                    = "EC2 Toturial"
  associate_public_ip_address = false


  root_block_device {
    volume_type           = "gp2"
    volume_size           = "8"
    delete_on_termination = true
  }

  tags = {
    Name = "Application"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }


}