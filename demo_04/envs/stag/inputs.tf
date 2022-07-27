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

resource "aws_s3_bucket" "example" { }

resource "aws_instance" "example_c" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  depends_on = [aws_s3_bucket.example]
}


