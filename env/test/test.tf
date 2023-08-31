provider "aws" {
  profile = var.profile
  region  = var.region
}

module "vpc" {
  source                  = "../../modules/vpc"
  cidr_blocks             = var.cidr_blocks
  cidr_blocks_defualt     = var.cidr_blocks_defualt
  public_cidr_blocks      = var.public_cidr_blocks
  private_cidr_blocks     = var.private_cidr_blocks
  availability_zones      = var.availability_zones
  map_public_ip_on_launch = var.map_public_ip_on_launch
  appname                 = var.appname
  env                     = var.env
  name_prefix             = ["web", "app", "data"]
}

# module "loadbalancer" {
#   source             = "../../modules/load_balancer"
#   internal           = var.internal
#   type               = var.type
#   tags               = { Owner = "test-loadbalancer" }
# }