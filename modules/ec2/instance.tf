# file modules/ec2/instance.tf

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  key_name      = "royzeng"

  tags = {
    Name = "RoyBastion"
  }
}