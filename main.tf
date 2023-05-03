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

  tags = {
    name = var.instance_name
  }
}