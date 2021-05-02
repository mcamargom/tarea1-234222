provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "mc-234222-instance" {
  ami           = "ami-048f6ed62451373d9" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg-ssh-tarea1.id]
  subnet_id = aws_subnet.SubnetTarea1.id

tags = {
    Name      = "mc-234222-instance"
    terraform = "True"
  }
}
