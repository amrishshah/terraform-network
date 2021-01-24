resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main_az1" {
  availability_zone = "us-east-1a"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/24 "

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}