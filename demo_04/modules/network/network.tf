## Core VPC
resource "aws_vpc" "main" {
  cidr_block            = var.vpc_cidr
  enable_dns_support    = true
  enable_dns_hostnames  = true 
}

## Public Subnet
resource "aws_subnet" "main_public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnets[0]
  availability_zone = var.availability_zones[0]

  tags = {
    Name = "core-public-a"
  }
}

## Private Subnet
resource "aws_subnet" "main_private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets[0]
  availability_zone = var.availability_zones[0]

  tags = {
    Name = "core-private-a"
  }
}