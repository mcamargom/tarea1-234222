resource "aws_vpc" "mc-234222-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mc-234222-vpc"
  }
}