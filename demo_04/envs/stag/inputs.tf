variable "vpc_cidr" {
    type = string
}

variable "availability_zones" {
  type    = list(string)
}

variable "private_subnets" {
    type = list(string)
}

variable "public_subnets" {
    type = list(string)
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}