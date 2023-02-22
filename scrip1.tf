#creating ec2instance
#provider setting details
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
#provider credential
provider "aws" {
  region = "us-east-1"
  profile = "tuser"
}
#resource
resource "aws_instance" "web" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t3.micro"

  tags = {
    Name = "LinuxServer"
  }
}
