resource "aws_vpc" "uj-vpc" {

    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "uj-vpc"
    }
  
}

resource "aws_subnet" "uj-pubsubnet" {

    vpc_id = aws_vpc.uj-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone= "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name = "uj-subnetpub1"
    }
  
}