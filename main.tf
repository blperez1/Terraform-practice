# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "0.0.0.0/0"

  tags = {
    Name = "Public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Private"
  }
}
# resource "aws_instance" "app_server" {
#   ami           = "ami-02396cdd13e9a1257"
#   instance_type = var.ec2_instance_type

#   tags = {
#     name = var.instance_name
#   }
# }