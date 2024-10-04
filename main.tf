provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 2
ami = "ami-0ebfd941bbafe70c6"
instance_type = "t2.micro"
tags = {
Name = "${terraform.workspace}-server"
}
}
