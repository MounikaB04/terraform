terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_security_group" "security_group_payment_app" {
  name        = "payment_app"
  description = "Application Security Group"
  depends_on  = [aws_eip.example]

  # Below ingress allows HTTPS  from DEV VPC
  ingress {
    from_port   = var.https
    to_port     = var.https
    protocol    = "tcp"
    cidr_blocks = [var.dev_vpc]
  }

  # Below ingress allows APIs access from DEV VPC

  ingress {
    from_port   = var.apis
    to_port     = var.apis
    protocol    = "tcp"
    cidr_blocks = [var.dev_vpc]
  }

  # Below ingress allows APIs access from Prod App Public IP.

  ingress {
    from_port   = var.prod_apis
    to_port     = var.prod_apis
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.example.public_ip}/32"]
  }

  egress {
    from_port   = var.splunk
    to_port     = var.splunk
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "payment_app"
    Team = "payment Team"
    Env = "Production"
  }
}


resource "aws_eip" "example" {
  domain = "vpc"

   tags = {
    Name = "payment_app"
    Team = "payment Team"
    Env = "Production"
  }
}