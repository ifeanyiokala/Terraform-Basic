variable "subnet_name" {
  description = "Name of the Subnet"
}
variable "subnet_cidr" {
  description = "CIDR block for the Subnet"
}
variable "subnet_gateway_ip" {
  description = "Name of the subnet ip"
}
variable "primary_dns" {
    default  = "100.125.1.250"
 }   
variable "secondary_dns" {
    default = "100.125.21.250"
  }
variable "vpc_id" {
    description = "value"
}