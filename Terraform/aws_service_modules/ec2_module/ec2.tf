# Creating a ec2 instance through the vpc we created:
module "VPC" {
  source = "../modules/vpc"
}
module "EC2" {
  source = "../modules/ec2"
  EC2_Subnet_ID ="${module.VPC.public_subnet_name}"
  vpc_id = "${module.VPC.vpc_name}"
}

