resource "aws_security_group" "sg-ssh-tarea1" {
  name        = "sg_ssh_tarea1"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.mc-234222-vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }



  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh_tarea1"
  }
}