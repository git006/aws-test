# file  dev/main.tf
module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  subnet_cidr = "192.168.1.0/24"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ami_id        = "ami-0756fbca465a59a30"
  instance_type = "t2.micro"
  subnet_id     = "${module.my_vpc.subnet_id}"
}