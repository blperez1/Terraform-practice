# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = var.ec2_instance_type

  tags = {
    name = var.instance_name
  }
}