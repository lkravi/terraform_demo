module "network" {
  source                = "../../modules/network"
  vpc_cidr              = var.vpc_cidr
  availability_zones    = var.availability_zones
  private_subnets       = var.private_subnets
  public_subnets        = var.public_subnets
}

