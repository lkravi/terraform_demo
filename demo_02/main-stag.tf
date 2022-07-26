## Test VPC
resource "aws_vpc" "test" {
  cidr_block            = "192.168.0.0/16"
  enable_dns_support    = true
  enable_dns_hostnames  = true 
}

## Test public Subnet
resource "aws_subnet" "test_public_a" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "test-public-a"
  }
}

## Staging Bastion
resource "aws_instance" "test_bastion" {
  ami               = "ami-051dcca84f1edfff1"
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.test_public_a.id
  availability_zone = "us-east-1a"
}

