                                                    # CREATING A EC2 INSTANCE #
#CREATING A PUBLIC EC2:
resource "aws_instance" "public-ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.Terraform-SG.id]
  subnet_id = var.EC2_Subnet_ID
  key_name = var.Ec2_pem_key
  associate_public_ip_address = true

  tags = {
    Name = "PUBLIC-EC2"
  }
}
