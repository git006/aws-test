# file ec2/variables.tf

variable "instance_type" {
  default = "t2.micro"
}
variable "ami_id" {}
variable "subnet_id" {}