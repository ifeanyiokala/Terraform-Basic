
module "vpc" {
  source   = "./Modules/vpc"
  vpc_name = "vpc-iac-demo"
  vpc_cidr = "192.168.0.0/16"
}

module "subnet" {
  source = "./Modules/subnet"
  subnet_name = "subnet-iac-demo2"
  subnet_cidr = "192.168.0.0/16"
  subnet_gateway_ip = "192.168.0.1"
  vpc_id = module.vpc.vpc_id
}

module "secgroup" {
    source = "./Modules/SG"
    security_group_id = module.secgroup.secgroup_id
  }

module "ecs" {
  source = "./Modules/ECS"
  secgroup_id = module.secgroup.secgroup_id
  subnet_id = module.subnet.subnet_id
  vpc_id = module.vpc.vpc_id

}   