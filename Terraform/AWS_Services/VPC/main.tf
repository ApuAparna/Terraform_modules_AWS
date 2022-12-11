                                                  # CREATING A PUBLIC AND PRIVATE VPC #
# CREATING A VPC:
resource "aws_vpc" "vpc-1" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "vpc-1"
  }
}

# Creating a Public Subnet:
resource "aws_subnet" "Public-Subnet" {
  vpc_id     = "${aws_vpc.vpc-1.id}"
  cidr_block = var.pubsubcidr

  tags = {
    Name = "Pub-Sub"
  }
}

# CREATING A INTERNET GATEWAY:
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc-1.id}"

  tags = {
    Name = "Internet-Gateway"
  }
}

# CREATING A ROUTE TABLE:
resource "aws_route_table" "RT" {
  vpc_id = "${aws_vpc.vpc-1.id}"

  route {
    cidr_block = var.RT_Cidr
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags = {
    Name = "Route-Table"
  }
}

# SUBNET ASSOCIATION WITH ROUTE TABLE:
resource "aws_route_table_association" "subnet-route" {
  subnet_id      = "${aws_subnet.Public-Subnet.id}"
  route_table_id = "${aws_route_table.RT.id}"
}

#CREATING PRIVATE SUBNET:
resource "aws_subnet" "Private-Subnet" {
  vpc_id     = "${aws_vpc.vpc-1.id}"
  cidr_block = var.PrivSubCidr

  tags = {
    Name = "Priv-Sub"
  }
}

# CREARING A ELASTIC IP:
resource "aws_eip" "elastic-ip" {
  vpc      = true
}

#CREATING A NAT GATEWAY:
resource "aws_nat_gateway" "nat-gw" {
  allocation_id = "${aws_eip.elastic-ip.id}"
  subnet_id     = "${aws_subnet.Public-Subnet.id}"

  tags = {
    Name = "NAT-gateway"
  }
}

# CREATING A PRIVATE ROUTE TABLE:
resource "aws_route_table" "Priv-RT" {
  vpc_id = "${aws_vpc.vpc-1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat-gw.id}"
  }

  tags = {
    Name = "Priv-Route-Table"
  }
}

# CREATING A SUBNET ASSOCIATION:
resource "aws_route_table_association" "Priv_Sub" {
  subnet_id      = "${aws_subnet.Private-Subnet.id}"
  route_table_id = "${aws_route_table.Priv-RT.id}"
}
