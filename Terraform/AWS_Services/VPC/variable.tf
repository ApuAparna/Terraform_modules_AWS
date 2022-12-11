# VPC Cidr Bloack:
variable "vpc-cidr" {
    description = "VPC Cidr Block"
    default = "10.0.0.0/16"
}

# Public Subnet Cidr:
variable "pubsubcidr" {
    description = "Public Subnet Cidr"
    default= "10.0.0.0/24"
}

#Route Table Cidr :
variable "RT_Cidr" {
    description = "Route Table Cidr Block"
    default = "0.0.0.0/0"
}

# Public Subnet Cidr:
variable "PrivSubCidr" {
    description = "Private Subnet Cidr"
    default= "10.0.1.0/24"
}
