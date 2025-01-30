# stores all the variable information
variable "AMI" {
    description = "This variable contains AMI ID"
    default = "ami-018875e7376831abe"
}

variable "instanceType" {
    description = "This variable contains the instance type"
    default = "t2.micro"
}

variable "numberOfInstance" {
    description = "This variable contains the number of instances"
    default = 2
}

# variable value can also be passed as an argument
# terraform apply -auto-approve -var 'numberOfInstance=3' -var 'instanceType=t2.large' -var 'AMI=ami-0abcdef1234567890'