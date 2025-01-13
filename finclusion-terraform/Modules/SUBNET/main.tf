resource "huaweicloud_vpc_subnet" "subnet" {
  name   = var.subnet_name
  cidr              = var.subnet_cidr
  gateway_ip        = var.subnet_gateway_ip
  vpc_id   = var.vpc_id
  availability_zone = "af-south-1a"


}

