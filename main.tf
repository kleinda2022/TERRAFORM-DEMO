provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATWXEE5JSGIH7XIVQ"
  secret_key = "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"
}

variable "subnet_cidr_block" {
  description = "subnet cidr block"
}

variable "vpc_cidr_block" {
  description = "vpc cidr block"
}

resource "aws_vpc" "dev-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name : "developement"

  }
}

resource "aws_subnet" "dev-subnet1" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name : "dev-subnet"
  }
}



output "dev-vpc-id" {
  value = aws_vpc.dev-vpc.id
}

output "aws-subnet1" {
  value = aws_subnet.dev-subnet1.id
}
