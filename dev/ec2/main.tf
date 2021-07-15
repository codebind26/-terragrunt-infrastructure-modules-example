terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
    profile = "terragrunt-demo"
}
resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type
}
