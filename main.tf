module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "172.16.0.0/16"
  public_subnets = "172.16.1.0/24"
  Private_subnets = "172.16.3.0/24"
  #public_subnets = ["172.16.1.0/24", "172.16.2.0/24"]
  #Private_subnets = ["172.16.3.0/24", "172.16.4.0/24"]
}

module "ec2_instance" {
  source = "./modules/ec2"
  subnet_id = module.vpc.public_subnets
  #subnet_id = module.vpc.public_subnet_.*.id[0]
  #vpc_security_group_ids = [module.vpc.default_security_group_id]
  #vpc_security_group_ids = [module.vpc.mynewsg.id]
}
