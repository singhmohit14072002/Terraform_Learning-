terraform {
required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
    }
 }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server" {
  ami           = "ami-04b4f1a9cf54c11d0"
  key_name = "hello_satan"
  instance_type = "t2.micro"

}