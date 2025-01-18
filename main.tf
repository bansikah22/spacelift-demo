terraform {
    required_version = ">= 1.2.0"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
}

provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "app_server" {
    ami           = "ami-09042b2f6d07d164a"
    instance_type = "t2.micro"
    tags = {
        Name = "app-server"
    }
  
}