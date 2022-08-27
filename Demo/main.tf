terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "test" {
  ami           = "ami-02ee763250491e04a"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.test_sg.id]

  tags = {
    Name = "Test"
  }

  
}

