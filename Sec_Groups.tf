resource "aws_security_group" "Allow_SSH" {
  name        = "Allowing-SSH"
  description = "Allow SSH"
  vpc_id      = module.network.vpc_id
  tags = {
    "Name" = "allowing-SSH"
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }
}

#=================================================

resource "aws_security_group" "Allow_SSH_3000_private" {
  name        = "Allowing-SSH-3000"
  description = "Allow SSH and 3000 private"
  vpc_id      = module.network.vpc_id
  tags = {
    "Name" = "Allowing-SSH-3000"
  }

  ingress {
    description = "allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]


  }

  ingress {
    description = "allow 3000"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]


  }
}