## Prod Bastion
resource "aws_instance" "prod_bastion" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = aws_subnet.main_public_a.id
  availability_zone = var.availability_zones[0]
}