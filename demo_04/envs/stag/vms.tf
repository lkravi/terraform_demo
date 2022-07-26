#Bastion host
resource "aws_instance" "stag_bastion" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.public_subnet_id
  availability_zone = var.availability_zones[0]
}

#Application Server
resource "aws_instance" "app_server" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.private_subnet_id
  availability_zone = var.availability_zones[0]
}