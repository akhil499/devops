terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-your Amazon Machine Image"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}
