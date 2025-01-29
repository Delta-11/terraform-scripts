provider "aws" {
    region = "us-east-1"
    access_key = "xxx"
    secret_key = "xxx"
}

resource "aws_instance" "AWSEC2Instance"{
    ami = "ami-0610b78350235" 
    instance_type = "t2.micro"
    security_groups = ["dev"]
    key_name = "dev"
    tags = {
        Name = "Ec2"
    }
}