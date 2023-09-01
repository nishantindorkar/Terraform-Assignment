provider "aws" {
  profile = var.profile
  region  = var.region
}

# module "vpc" {
#   source                  = "../../modules/vpc"
#   cidr_blocks             = var.cidr_blocks
#   cidr_blocks_defualt     = var.cidr_blocks_defualt
#   public_cidr_blocks      = var.public_cidr_blocks
#   private_cidr_blocks     = var.private_cidr_blocks
#   availability_zones      = var.availability_zones
#   map_public_ip_on_launch = var.map_public_ip_on_launch
#   appname                 = var.appname
#   env                     = var.env
# }

# module "loadbalancer" {
#   source             = "../../modules/load_balancer"
#   internal           = var.internal
#   type               = var.type
#   tags               = { Owner = "test-loadbalancer" }
#   appname            = var.appname
#   env                = var.env
#   security_group_id  = module.vpc.security_group_id
#   vpc_id             = module.vpc.vpc_id
#   public_subnet_ids  = module.vpc.public_subnet_ids
#   private_subnet_ids = module.vpc.private_subnet_ids
# }

# module "eks-cluster" {
#   source            = "../../modules/eks"
#   public_subnet_ids = module.vpc.public_subnet_ids
#   security_group_id = module.vpc.security_group_id
#   appname            = var.appname
#   env                = var.env
# }

# module "windows-instances" {
#   source                 = "../../modules/windows_instances"
#   instance_type          = var.instance_type
#   key_name               = var.key_name
#   appname                = var.appname
#   env                    = var.env
#   public_subnet_ids      = module.vpc.public_subnet_ids
#   private_subnet_ids     = module.vpc.private_subnet_ids
#   security_group_id      = module.vpc.security_group_id
#   private_instance_count = module.vpc.private_cidr_blocks
# }

# module "ecr-repository" {
#     source = "../../modules/ecr"
# }

# module "customer-master-keys" {
#     source = "../../modules/cmk"
# }

# module "simple-storage-service" {
#     source = "../../modules/s3"
#     appname                = var.appname
#     env                    = var.env
# }

# module "elastic-block-store" {
#     source = "../../modules/ebs"
#     redis_volume_count   = var.redis_volume_count
#     jenkins_volume_count = var.jenkins_volume_count
#     volume_size_gb       = var.volume_size_gb
#     rabbitmq_volume_count = var.rabbitmq_volume_count
#     rabbitmq_volume_size_gb = var.rabbitmq_volume_size_gb
#     availability_zones   = var.availability_zones
# }

module "documentdb" {
    source = "../../modules/docdb"
    db_instance_type = var.db_instance_type
    quantity = var.quantity
    availability_zones = var.availability_zones
}

