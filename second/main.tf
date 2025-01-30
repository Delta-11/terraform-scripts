# resource configuration in main.tf
resource "aws_instance" "AWSEC2Instance"{
    ami = "ami-018875e7376831abe" 
    count = 2
    instance_type = "t2.micro"
    security_groups = ["dev"]
    key_name = "dev"
    tags = {
        Name = "Ec2"
    }
}