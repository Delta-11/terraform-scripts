# terraform.state file stores the metdata of the infrastructure, if it is deleted then whatever configuration you have applied will be 
# lost and you will need to recreate the infrastructure from scratch. It is important to regularly back up this file to avoid any potential data loss.
# It is usually stored in the cloud server (a centralized repo) so that it is not lost.
# for ex - I create ec2 instance and then delete the terraform.state file, we will loose the configuration and we will have to manually handle all the ec2 instance part.

provider "aws" {
    region = "us-east-1"
    access_key = "xxx"
    secret_key = "xxx"
}

resource "aws_instance" "AWSEC2Instance"{
    ami = "ami-0c614dee691cbbf37" 
    instance_type = "t2.micro"
    security_groups = ["dev"]
    key_name = "dev"
    tags = {
        Name = "Ec2"
    }
}
