resource "aws_instance" "Bastion" {
  ami                         = var.ami
  instance_type               = "t2.micro"
  subnet_id                   = module.network.pub_sub_1_id
  vpc_security_group_ids      = [aws_security_group.Allow_SSH.id]
  key_name                    = "EC2 Toturial"
  associate_public_ip_address = true


  root_block_device {
    volume_type           = "gp2"
    volume_size           = "8"
    delete_on_termination = true
  }

  tags = {
    Name = "Bastion"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> private_ips.txt"
  }

}