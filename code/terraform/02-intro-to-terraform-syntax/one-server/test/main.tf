terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-0f15e0a4c8d3ee5fe"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-region-europe"
  }
}

