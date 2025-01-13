module "CDN" {
  source = "./Modules/CDN"
  domain_name = ""
  origin_server = module.obs_2.bucketname
}

module "dns" {
  source = "./Modules/DNS"
  endpoint_name = "finclusion_test"
  subnet_id = module.subnet.subnet_id
  
}

module "obs_1" {
  source = "./Modules/OBS 1"
  bucket_name2 = "finclusion2"
}

module "obs_2" {
  source = "./Modules/OBS 2"
  bucket_name = "finclusion3"
}

module "vpc" {
  source   = "./Modules/vpc"
  vpc_name = "vpc-finclusion-terraform"
  vpc_cidr = "192.168.0.0/16"
}

module "subnet" {
  source            = "./Modules/subnet"
  subnet_name       = "subnet-finclusion-terraform"
  subnet_cidr       = "192.168.0.0/16"
  subnet_gateway_ip = "192.168.0.1"
  vpc_id = module.vpc.vpc_id
}