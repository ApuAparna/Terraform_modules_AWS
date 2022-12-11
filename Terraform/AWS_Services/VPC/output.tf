#VPC Name
output"vpc_name"{
    value="${aws_vpc.vpc-1.id}"
}

# Public Subnet name:
output"public_subnet_name" {
    value = "${aws_subnet.Public-Subnet.id}"
}

# Internet Gateway Name:
output "IGW-id"{
    value="${aws_internet_gateway.igw.id}"
}

#Route Table Name:
output "Route_ID" {
    value = "${aws_route_table.RT.id}"
}

# Private Subnet:
output "private_subnet_id"{
    value = "${aws_subnet.Private-Subnet.id}"
}

#Elastic IP Address:
output "Elastic_IP" {
    value = "${aws_eip.elastic-ip.id}"
}

# NAT Gateway:
output "NAT_Gateway"{
    value = "${aws_nat_gateway.nat-gw.id}"
}

#Private Route Table:
output "Private_Route_Table"{
    value = "${aws_route_table.Priv-RT.id}"
}

