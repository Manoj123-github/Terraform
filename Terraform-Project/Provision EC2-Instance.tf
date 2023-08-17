terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.58.0"
        }
    }
}

provider "aws" {
       profile = "default"
       region = "us-east-1"
       
}
resource "aws_instance" "MyFirstServer"{
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t2.micro"
    
    tags = {
        Name = "MyServer" 
    }
}