# resource configuration in main.tf
resource "aws_instance" "AWSEC2Instance"{
    ami =  "${var.AMI}"
    count = "${var.numberOfInstance}"
    instance_type =  "${var.instanceType}"
    security_groups = ["dev"]
    key_name = "dev"
    tags = {
        Name = "Ec2"
    }
}