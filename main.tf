terraform {
  required_version = "1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.47.0"
    }
    
  }
}
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "yes" {
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.Micro"
  key_name = "LinuxKeyPair"
  tags = {
    "Name" = "Yashwant_New"
    "Deparment" = "IT"
    "costcenter" = "0000"
    "count" = 2
  }

}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}

