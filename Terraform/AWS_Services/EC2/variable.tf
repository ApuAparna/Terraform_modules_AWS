#EC2 Region:
variable "EC2_Region" {
    description = " Ec2 Region"
    default = "us-east-1"
}
# AMI ID:
variable "ami" {
    description = "EC2 AMI ID"
    default = "ami-0149b2da6ceec4bb0"
}

#Instance Type:
variable "instance_type" {
    description = "Instance Type"
    default = "t2.micro"
}

# Pem Key:
variable "Ec2_pem_key" {
    description = "Pem Key For EC2"
    default = "demopem"
}

# EC2 Subent ID:
variable "EC2_Subnet_ID" {}

# VPC ID:
variable "vpc_id" {}
